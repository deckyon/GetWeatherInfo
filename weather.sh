#!/bin/ash

# Pull the GPS location and store it in a file for use in the script
# Change the directory to match whereever you wish your scripts to live.
ubus -S call gps info > /smb/scripts/gpsweather.txt

# Call the python script that will do the work.
python /smb/scripts/showweather.py
exit 0
