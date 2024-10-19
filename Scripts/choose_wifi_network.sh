#!/bin/sh

CHOOSEN_NETWORK=$(cat ../networks.txt | fzf)
if [ -z $CHOOSEN_NETWORK ]; then
    echo "ERROR: Exited network selection"
    exit 1
fi
LOGIN=${CHOOSEN_NETWORK%//*}
PASSWORD=${CHOOSEN_NETWORK##*/}
nmcli device wifi connect $LOGIN password $PASSWORD
