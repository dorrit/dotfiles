# WireGuard VPN Setup

## Overview
This dotfiles configuration includes WireGuard VPN support with convenient zsh aliases for quick connection management.

## Configuration Location
WireGuard configs must be stored in: `/etc/wireguard/`

**Current configured VPN:** `ucup-NL-FREE-49`

## Prerequisites
- WireGuard installed (included in setup.sh)
- Root/sudo access for config file creation
- WireGuard configuration file from your VPN provider

## Setup Instructions

### 1. Create WireGuard Configuration
```bash
sudo nano /etc/wireguard/ucup-NL-FREE-49.conf
```

### 2. Add Your Configuration
Paste your WireGuard configuration from your VPN provider. Typical format:
```ini
[Interface]
PrivateKey = YOUR_PRIVATE_KEY_HERE
Address = 10.x.x.x/32
DNS = 1.1.1.1

[Peer]
PublicKey = SERVER_PUBLIC_KEY_HERE
Endpoint = server.vpn.com:51820
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 25
```

### 3. Set Correct Permissions
```bash
sudo chmod 600 /etc/wireguard/ucup-NL-FREE-49.conf
```

### 4. Enable IP Forwarding (Optional, for routing)
```bash
sudo sysctl -w net.ipv4.ip_forward=1
```

## Usage

This dotfiles configuration provides convenient zsh aliases (defined in `.zshrc`):

### Start VPN Connection
```bash
vpn-up
```
Equivalent to: `sudo wg-quick up ucup-NL-FREE-49`

### Stop VPN Connection
```bash
vpn-down
```
Equivalent to: `sudo wg-quick down ucup-NL-FREE-49`

### Check VPN Status
```bash
vpn-status
```
Equivalent to: `sudo wg show`

## Troubleshooting

### Check if WireGuard interface is up
```bash
ip link show wg0
```

### View WireGuard logs
```bash
sudo journalctl -u wg-quick@ucup-NL-FREE-49
```

### Test connection
```bash
vpn-up
curl ifconfig.me  # Should show VPN IP
ping 1.1.1.1      # Test connectivity
```

### Common Issues

**Issue: "Operation not permitted"**
- Solution: Make sure you're using `sudo` or the alias includes it

**Issue: "Name or service not known"**
- Solution: Check your DNS settings in the config file

**Issue: "Cannot find device"**
- Solution: Ensure WireGuard kernel module is loaded: `sudo modprobe wireguard`

## Adding Additional VPN Configs

To add more VPN configurations:

1. Create new config file:
   ```bash
   sudo nano /etc/wireguard/my-new-vpn.conf
   ```

2. Add new aliases to `.zshrc`:
   ```bash
   alias vpn2-up='sudo wg-quick up my-new-vpn'
   alias vpn2-down='sudo wg-quick down my-new-vpn'
   ```

3. Reload zsh:
   ```bash
   source ~/.zshrc
   ```

## Security Notes

- ⚠️ **Never commit WireGuard config files to git** (contains private keys)
- Keep config files with restrictive permissions (600)
- The `.gitignore` should exclude `/etc/wireguard/` configs
- Consider using a password manager for backup

## References

- [WireGuard Official Documentation](https://www.wireguard.com/)
- [Arch Wiki: WireGuard](https://wiki.archlinux.org/title/WireGuard)
- [WireGuard Quick Start](https://www.wireguard.com/quickstart/)
