#!/bin/sh
COOPER='192.168.0.31'

echo "Backing up Movies"
# requires sudo if using ssh to transfer data (ip:/local/path)
sudo rsync -av --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' \
/mnt/virtual/tank/Movies \
$COOPER:/data/CooperMedia 

echo "Backing up TV Shows"
# requires sudo if using ssh to transfer data (ip:/local/path)
sudo rsync -av --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' \
/mnt/virtual/tank/TV \
$COOPER:/data/CooperMedia

echo "Backing up Audiobooks"
# requires sudo if using ssh to transfer data (ip:/local/path)
sudo rsync -av --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' \
/mnt/virtual/tank/Audiobooks \
$COOPER:/data/CooperMedia

echo "Backing up Music"
# requires sudo if using ssh to transfer data (ip:/local/path)
sudo rsync -av --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' \
/mnt/virtual/tank/Music \
$COOPER:/data/CooperMedia
#$COOPER:/data/CooperMusic



#/mnt/virtual/tank/Music \
#192.168.0.73:/data/CooperMusic 
#/mnt/cooper/coopermusic
