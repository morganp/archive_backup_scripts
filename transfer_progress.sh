#!/bin/bash

source ./transfer_config
## Show Progress 
RSYNC_OPTIONS="$RSYNC_OPTIONS --progress"

echo "Backing up Movies"
# requires sudo if using ssh to transfer data (ip:/local/path)
eval rsync $RSYNC_OPTIONS $RSYNC_EXCLUDE $LOCAL_FOLDER/Movies $REMOTE_FOLDER

echo "Backing up TV Shows"
# requires sudo if using ssh to transfer data (ip:/local/path)
eval rsync $RSYNC_OPTIONS $RSYNC_EXCLUDE $LOCAL_FOLDER/TV $REMOTE_FOLDER

echo "Backing up Audiobooks"
# requires sudo if using ssh to transfer data (ip:/local/path)
eval rsync $RSYNC_OPTIONS $RSYNC_EXCLUDE $LOCAL_FOLDER/Audiobooks $REMOTE_FOLDER

echo "Backing up Music"
RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude 'Music/SONOS-FLAC/Other/temp2'"
# requires sudo if using ssh to transfer data (ip:/local/path)
eval rsync $RSYNC_OPTIONS $RSYNC_EXCLUDE $LOCAL_FOLDER/Music $REMOTE_FOLDER

