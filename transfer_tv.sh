#!/bin/sh

# requires sudo if using ssh to transfer data (ip:/local/path)
cmd="sudo rsync -av --ignore-errors --delete --exclude '.Trashes'   \
--exclude '.Spotlight-V100' --exclude '.DS_Store' --exclude '._.DS_Store' --exclude '.sync' \
/mnt/virtual/tank/TV \
192.168.0.31:/data/CooperMedia"

echo $cmd 
#192.168.0.31:/data/CooperMedia 

