#!/bin/sh
COOPER='192.168.0.31'
#COOPER='192.168.0.206'

# requires sudo if using ssh to transfer data (ip:/local/path)
#sudo rsync -av --ignore-errors --delete --exclude '.Trashes'   \
sudo rsync -av --progress --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' \
--exclude 'Other/temp2' \
/mnt/virtual/tank/Music/ \
$COOPER:/data/CooperMedia/Music/

