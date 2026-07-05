#!/bin/bash

# Configurable parameters
DATE=$(date -u +%d-%m-%Y)
CITY="Pati"
COUNTRY="Indonesia"
METHOD=20  # (MWL method) see https://aladhan.com/prayer-times-api#get-/timingsByCity/-date-

# Get today's prayer times using AlAdhan API
response=$(curl -sL "http://api.aladhan.com/v1/timingsByCity/$DATE?city=$CITY&country=$COUNTRY&method=$METHOD")

# Extract times using jq (install jq if not installed)
declare -A prayers
for prayer in Fajr Dhuhr Asr Maghrib Isha; do
  prayers[$prayer]=$(echo "$response" | jq -r ".data.timings.$prayer" | cut -d " " -f1)
done

# Convert HH:MM to total minutes since midnight for math
to_minutes() {
  IFS=: read -r h m <<< "$1"
  echo $((10#$h * 60 + 10#$m))
}

now=$(date +%H:%M)
now_minutes=$(to_minutes "$now")
THRESHOLD=10 # threshold in minutes

# Function to output JSON for Waybar
output_json() {
  # Accepts text and optional color argument.
  local text="$1"
  local class="$2"
  if [[ -n "$class" ]]; then
    echo "{\"text\": \"$text\", \"class\": \"$class\"}"
  else
    echo "{\"text\": \"$text\"}"
  fi
}

result=""
# Iterate over prayers in order
for prayer in Fajr Dhuhr Asr Maghrib Isha; do
  prayer_time=${prayers[$prayer]}
  prayer_minutes=$(to_minutes "$prayer_time")
  diff=$(( prayer_minutes - now_minutes ))

  if (( diff <= 0 )) && (( now_minutes < prayer_minutes + THRESHOLD )); then
    # Current prayer is active (within THRESHOLD minutes after start)
    result=$(output_json "$prayer: $prayer_time" "alert")
    break
  elif (( diff > 0 )) && (( diff < THRESHOLD )); then
    # Prayer is approaching within THRESHOLD minutes.
    result=$(output_json "$prayer: $prayer_time" "alert")
    break
  elif (( diff > 0 )); then
    # Next prayer beyond the threshold.
    result=$(output_json "$prayer: $prayer_time")
    break
  fi
done

if [[ -z "$result" ]]; then
  if [[ -n "${prayers[Fajr]}" ]]; then
    # Fajr time exists → show tomorrow's time
    result=$(output_json "Next: Fajr at ${prayers[Fajr]} (tomorrow)")
  else
    # Fajr time is missing → fallback
    result=$(output_json "Unknown" "alert")
  fi
fi
echo "$result"
