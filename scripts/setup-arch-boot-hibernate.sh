#!/usr/bin/env bash
set -euo pipefail

SWAPFILE=${SWAPFILE:-/swapfile}
SWAP_SIZE=${SWAP_SIZE:-24G}
ARCH_LABEL=${ARCH_LABEL:-Arch Linux}
ARCH_LOADER=${ARCH_LOADER:-\\EFI\\Linux\\arch-linux.efi}

if [[ ${EUID} -ne 0 ]]; then
  printf 'Run this script as root: sudo %s\n' "$0" >&2
  exit 1
fi

require_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    printf 'Missing required command: %s\n' "$1" >&2
    exit 1
  fi
}

require_cmd bootctl
require_cmd efibootmgr
require_cmd filefrag
require_cmd findmnt
require_cmd lsblk
require_cmd mkinitcpio
require_cmd mkswap
require_cmd swapon

root_source=$(findmnt -no SOURCE /)
root_uuid=$(blkid -s UUID -o value "$root_source")
esp_source=$(findmnt -no SOURCE /boot)
esp_disk=/dev/$(lsblk -no PKNAME "$esp_source")
esp_part=$(lsblk -no PARTN "$esp_source")

printf 'Root device: %s\n' "$root_source"
printf 'Root UUID: %s\n' "$root_uuid"
printf 'ESP device: %s on %s partition %s\n' "$esp_source" "$esp_disk" "$esp_part"

if ! efibootmgr -v | grep -Fq "$ARCH_LOADER"; then
  printf 'Creating UEFI entry: %s -> %s\n' "$ARCH_LABEL" "$ARCH_LOADER"
  efibootmgr --create --disk "$esp_disk" --part "$esp_part" --label "$ARCH_LABEL" --loader "$ARCH_LOADER"
else
  printf 'UEFI entry for %s already exists.\n' "$ARCH_LOADER"
fi

arch_bootnum=$(efibootmgr | awk -v label="$ARCH_LABEL" '$0 ~ "^Boot[0-9A-Fa-f]{4}.*" label { print substr($1, 5, 4); exit }')
if [[ -z "$arch_bootnum" ]]; then
  printf 'Could not find UEFI boot entry labeled "%s".\n' "$ARCH_LABEL" >&2
  exit 1
fi

current_order=$(efibootmgr | awk -F': ' '/^BootOrder:/ { print $2 }')
new_order=$arch_bootnum
IFS=',' read -ra bootnums <<< "$current_order"
for bootnum in "${bootnums[@]}"; do
  if [[ "$bootnum" != "$arch_bootnum" && -n "$bootnum" ]]; then
    new_order+=",$bootnum"
  fi
done

printf 'Setting UEFI BootOrder: %s\n' "$new_order"
efibootmgr --bootorder "$new_order"

printf 'Setting systemd-boot default entry to arch-linux.efi\n'
bootctl set-default arch-linux.efi || true

if [[ ! -f "$SWAPFILE" ]]; then
  printf 'Creating swapfile %s with size %s\n' "$SWAPFILE" "$SWAP_SIZE"
  fallocate -l "$SWAP_SIZE" "$SWAPFILE"
  chmod 600 "$SWAPFILE"
  mkswap "$SWAPFILE"
else
  printf 'Swapfile %s already exists; keeping it.\n' "$SWAPFILE"
  chmod 600 "$SWAPFILE"
fi

if ! swapon --show=NAME --noheadings | grep -Fxq "$SWAPFILE"; then
  printf 'Enabling swapfile %s\n' "$SWAPFILE"
  swapon "$SWAPFILE"
fi

if ! grep -Eq "^[[:space:]]*$SWAPFILE[[:space:]]+none[[:space:]]+swap" /etc/fstab; then
  printf 'Adding swapfile to /etc/fstab\n'
  printf '%s none swap defaults,pri=10 0 0\n' "$SWAPFILE" >> /etc/fstab
fi

resume_offset=$(filefrag -v "$SWAPFILE" | awk '/^[[:space:]]*0:/ { gsub(/\.\./, "", $4); print $4; exit }')
if [[ -z "$resume_offset" ]]; then
  printf 'Failed to calculate resume_offset for %s\n' "$SWAPFILE" >&2
  exit 1
fi

cmdline_file=/etc/kernel/cmdline
cmdline=$(tr '\n' ' ' < "$cmdline_file")
cmdline=$(printf '%s' "$cmdline" | sed -E 's/(^| )resume=[^ ]+//g; s/(^| )resume_offset=[^ ]+//g; s/[[:space:]]+/ /g; s/^ //; s/ $//')
printf '%s resume=UUID=%s resume_offset=%s\n' "$cmdline" "$root_uuid" "$resume_offset" > "$cmdline_file"

printf 'Updated %s:\n' "$cmdline_file"
sed -n '1p' "$cmdline_file"

printf 'Rebuilding initramfs/UKI with mkinitcpio...\n'
mkinitcpio -P

printf '\nDone. Reboot once, then test hibernate with:\n'
printf '  systemctl hibernate\n'
