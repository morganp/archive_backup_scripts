#!/bin/sh

LOCAL_FOLDER='/mnt/virtual/tank'
COOPER='192.168.0.31'
REMOTE_MACHINE=$COOPER

    RSYNC_OPTIONS='-av --progress --ignore-errors --delete'
    RSYNC_EXCLUDE="--exclude '.Trashes'"
    RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude '.Spotlight-V100'"
    RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude '.DS_Store'"
    RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude '._.DS_Store'"
    
    ## Play Nice with BT Sync
    RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude '.sync'"



echo "Backing up Movies"
# requires sudo if using ssh to transfer data (ip:/local/path)
#sudo rsync $RSYNC_OPTIONS $RSYNC_EXCLUDE  \
#$LOCAL_FOLDER/Movies \
#$REMOTE_MACHINE:/data/CooperMedia

echo "Backing up TV Shows"
# requires sudo if using ssh to transfer data (ip:/local/path)
eval rsync $RSYNC_OPTIONS $RSYNC_EXCLUDE --dry-run $LOCAL_FOLDER/TV $REMOTE_MACHINE:/data/CooperMedia

exit 0

echo "Backing up Audiobooks"
# requires sudo if using ssh to transfer data (ip:/local/path)
sudo rsync -av --progress --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' \
/mnt/virtual/tank/Audiobooks \
$COOPER:/data/CooperMedia

echo "Backing up Music"
# requires sudo if using ssh to transfer data (ip:/local/path)
sudo rsync -av --progress --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' \
/mnt/virtual/tank/Music \
$COOPER:/data/CooperMedia
#$COOPER:/data/CooperMusic



#/mnt/virtual/tank/Music \
#192.168.0.73:/data/CooperMusic 
#/mnt/cooper/coopermusic
