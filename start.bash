#!/bin/bash

while true; do
    # testing...
    LC_ALL=C nmcli -t -f DEVICE,STATE dev | grep -q "^wlan0:connected$"
    if [ $? -eq 0 ]; then
        cd ~/dakboard/
        git pull;
        ls;
    else
        # not connected, sleeping for a second
        sleep 1
    fi
done
