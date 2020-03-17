#!/bin/bash

# Desc : VPN Checker
# check if tun0 ipsec0 or wg0 is present

# To bypass the prompted password on start or stop
# Be sure that /etc/sudoers.d/ is added in the sudoers default file
# and create a /etc/sudoers.d/sudo-vpn file with the following content
# %sudo  ALL=(ALL) NOPASSWD: /usr/bin/wg-quick


WIREGUARD_CLI='/usr/bin/wg-quick'
IFACE_LIST='tun0|ipsec0|wg0'

# Check VPN status
if ip a | grep -Eq ${IFACE_LIST}; then
	echo "VPN ⬆ | color=green"
else
	echo "VPN ⬇ | color=red"
fi

# Add a menu to Start and Stop Wireguard if cli is found
if [ -f "${WIREGUARD_CLI}" ]; then
	echo "---"
	echo "Start Wireguard | bash='sudo ${WIREGUARD_CLI} up wg0 && exit'"
	echo "Stop Wireguard | bash='sudo ${WIREGUARD_CLI} down wg0 && exit'"
fi



