#!/bin/bash

mkdir ~/lain/exc/ ~/lain/wallpapers/
cd ~/lain/wallpapers/

page=1
while [ $page -le 7 ]
do
	curl -s "https://wallhaven.cc/api/v1/search?q=lain&page=$page" | jq '.data[].path' | xargs -I{} wget {}
	page=$(( page+1 ))
done


echo "Download Successful!"
echo "Wallpapers are in ~/lain/wallpapers/"

mv ~/lain_wallpapers/lain.sh ~/lain/exc/

