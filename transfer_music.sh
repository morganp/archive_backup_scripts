#!/bin/sh

source ./transfer_config

echo "Backing up Music"
# requires sudo if using ssh to transfer data (ip:/local/path)
eval rsync $RSYNC_OPTIONS $RSYNC_EXCLUDE $LOCAL_FOLDER/Music $REMOTE_FOLDER

