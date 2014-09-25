#!/bin/bash

clear
echo "Auto Backup Version 1.0"
echo ""
echo "By Wferr"
sleep 5

NOW=$(date +"%d-%m-%y")
FILE="$NOW.tar.gz"

#Get into Directory to GZIP up!
#And also Put the GZIP info /backups
tar cvzf /home/backups/$NOW.tar.gz /home/minecraft

echo "Done!"
