#!/bin/bash

clear
echo "Auto Backup Version 1.0"
echo ""
echo "By Wferr"
sleep 5

NOW=$(date +"%m-%d-%y")
FILE="$NOW.tar.gz"

#Get into Directory to GZIP up!
#And also Put the GZIP info /backups
#To run daily use "0 5 * * * /home/backup.sh" as a cron job 
#Runs at 5am every day
tar cvzf /home/backups/$NOW.tar.gz /home/minecraft

echo "Done!"
