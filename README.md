# argos-scripts
Scripts for [Argos](https://github.com/p-e-w/argos) gnome-shell extension.

## vpn-check.5s.sh
Show the vpn status. 

Simply check if _tun0_ or _ipsec0_ or _wg0_ interface exist.


### wireguard sepcificity
This script also add a sub-menu to start and stop wireguard if `/usr/bin/wg-quick` exist.

Note that wireguard as to be configured and saved to use the menu.

To bypass the prompted password be sure that `/etc/sudoers.d/` is added in the _sudoers default file_ and create a `/etc/sudoers.d/sudo-vpn` file with the following content : 
```
%sudo  ALL=(ALL) NOPASSWD: /usr/bin/wg-quick
```


