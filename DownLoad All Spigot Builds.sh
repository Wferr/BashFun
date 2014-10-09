#!/bin/bash
#This is to download all existing Spigot Builds

echo ""
echo "Download All Spigot Builds EVER"
echo "Version 1.0"
echo ""
#Testing Pause in the script, comment out this area if CHRON Job
read -p "Press ENTER to continue, to stop press CTRL + C"

echo "Continuing!"
sleep 5
clear

#Change 2nd number to the most recent spigot build number.
for i in {1..1611}
do
	echo "Downloading Spigot #$1"
	wget http://ci.md-5.net/job/Spigot/"$i"/artifact/*zip*/archive.zip
	mv archive.zip spigotbuild$1.zip
done
