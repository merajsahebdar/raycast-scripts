#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title System Network Proxy
# @raycast.mode compact
#
# Optional parameters:
# @raycast.icon 🌍
# @raycast.packageName Raycast Scripts
# @raycast.argument1 { "type": "text", "placeholder": "target" }

case $1 in
    0)
        networksetup -setsocksfirewallproxystate "Wi-Fi" "off"
        echo "Turned Off"
    ;;
    1)
        networksetup -setsocksfirewallproxy "Wi-Fi" "127.0.0.1" 1081
        echo "Turned On"
    ;;
    current)
        networksetup -getsocksfirewallproxy "Wi-Fi" | head -n1
    ;;
esac
