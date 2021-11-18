#!/usr/bin/bash

echo "Select a station to listen to:";
select station in "Doomed" \
    "Groove Salad" \
    "Lush" \
    "Suburbs of Goa" \
    "Secret Agent" \
    "Drone Zone" \
    "Space Station" \
    "cliqhop idm" \
    "Digitalis" \
    "Sonic Universe" \
    "Boot Liquor" "Covers" \
    "Illinois Street Lounge" \
    "indie pop rocks" \
    "PopTron" \
    "Tags Trip" \
    "Beat Bender" \
    "Mission Control"; do 

    station=$(echo -n "$station" | tr '[:upper:]' '[:lower:]' | sed 's/ //g');
    break;
done;
mpv https://somafm.com/startstream=${station}.pls


