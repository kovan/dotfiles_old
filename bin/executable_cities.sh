#!/bin/bash

SRC="/mnt/e/SteamLibrary/steamapps/workshop/content/255710"
DST="/mnt/c/Users/k/AppData/Local/Colossal Order/Cities_Skylines"

rsync -a -v "$SRC/" "$DST/Addons/Assets"

for dir in $(ls $SRC)
do
	if grep -q dll <<< "$(ls $SRC/$dir)" 
	then
		cp -r -n $SRC/$dir "$DST/Addons/Mods"
	fi
done	
