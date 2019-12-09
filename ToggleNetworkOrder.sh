#!/bin/bash

firstService=$(networksetup -listallnetworkservices | sed -n 2p)
wifiConst="Wi-Fi"

if [ "$firstService" == "$wifiConst" ]; then
    networksetup -ordernetworkservices "USB 10/100/1000 LAN" "Wi-Fi" "LPSS Serial Adapter (1)" "LPSS Serial Adapter (2)" "Bluetooth PAN" "Thunderbolt Bridge"
else
    networksetup -ordernetworkservices "Wi-Fi" "USB 10/100/1000 LAN" "LPSS Serial Adapter (1)" "LPSS Serial Adapter (2)" "Bluetooth PAN" "Thunderbolt Bridge"
fi
