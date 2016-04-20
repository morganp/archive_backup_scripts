#!/bin/sh

LOCAL_FOLDER='/mnt/virtual/tank'
COOPER='192.168.0.31'
REMOTE_FOLDER=$COOPER

RSYNC_OPTIONS='-av --progress --ignore-errors --delete'
RSYNC_EXCLUDE="--exclude '.Trashes'"
RSYNC_EXCLUDE="$RSYNC_EXCLUDE --exclude '.Spotlight-V100'"

echo "Backing up Movies"
# requires sudo if using ssh to transfer data (ip:/local/path)
sudo rsync -av --progress --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' \
/mnt/virtual/tank/Movies \
$COOPER:/data/CooperMedia 

echo "Backing up TV Shows"
# requires sudo if using ssh to transfer data (ip:/local/path)
sudo rsync -av --progress --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' \
/mnt/virtual/tank/TV \
$COOPER:/data/CooperMedia

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
