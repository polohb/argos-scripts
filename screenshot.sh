#!/bin/bash

# Desc : gnome-screenshot interactive shortcut

SC_APP='/usr/bin/gnome-screenshot'

echo "| iconName=applets-screenshooter"
echo "---"
echo "Fullscreen | bash='${SC_APP} -i' terminal=false"
echo "Window | bash='${SC_APP} -wi' terminal=false"
echo "Crop | bash='${SC_APP} -ai' terminal=false"



