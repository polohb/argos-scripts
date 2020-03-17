#!/bin/bash

# Desc : VPN Checker
# check if tun0 ipsec0 or wg0 is present

IFACE_LIST='tun0|ipsec0|wg0'


if ip a | grep -Eq ${IFACE_LIST}; then
	echo "VPN ⬆ | color=green"
else
	echo "VPN ⬇ | color=red"
fi
