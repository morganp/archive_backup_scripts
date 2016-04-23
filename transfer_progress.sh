#!/bin/sh

LOCAL_FOLDER='/mnt/virtual/tank'
COOPER='192.168.0.31'
REMOTE_FOLDER="$COOPER:/data/CooperMedia"

RSYNC_OPTIONS='-av --progress --ignore-errors --delete'
## Dry run
RSYNC_OPTIONS="$RSYNC_OPTIONS --dry-run"

RSYNC_EXCLUDE="--exclude '.Trashes'"
RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude '.Spotlight-V100'"
RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude '.DS_Store'"
RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude '._.DS_Store'"
    
## Play Nice with BT Sync
RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude '.sync'"


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
# requires sudo if using ssh to transfer data (ip:/local/path)
eval rsync $RSYNC_OPTIONS $RSYNC_EXCLUDE $LOCAL_FOLDER/Music $REMOTE_FOLDER

