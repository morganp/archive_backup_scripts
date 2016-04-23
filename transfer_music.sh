#!/bin/bash

source ./transfer_config

#Exclude Other/Temp2
RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude 'Music/SONOS-FLAC/Other/temp2'"

echo "Backing up Music"
# requires sudo if using ssh to transfer data (ip:/local/path)
eval rsync $RSYNC_OPTIONS $RSYNC_EXCLUDE "$LOCAL_FOLDER/Music" $REMOTE_FOLDER

