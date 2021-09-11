#!/bin/sh

menu(){
	printf	"1. Taken screenshot and save in ~/.screenshots\n"
	printf	"2. Taken screenshot and copy to the clipboard\n"
	printf	"3. Taken screenshot and upload to imgur\n"
}

choice=$(menu | dmenu -p "Screenshot helper:" -i -l 20 | cut -d. -f1)
folder="$HOME/.screenshots"
case $choice in
	1)
		if [ ! -d "$folder" ]; then
			mkdir ~/.screenshots
		fi
		sleep 1
		# import $folder/$(date +%Y-%m-%d_%T).png
		import $folder/$(date +%Y-%m-%d_%T).png
		notify-send "Screenshot taken"
		break
		;;
	2)
		sleep 1
		name="$(date +%Y-%m-%d_%T).png"
		import /tmp/$name
		xclip -selection clipboard -t "image/png" -i /tmp/$name
		notify-send "Screenshot copied to clipboard"
		break
		;;
	3)
		
		break
		;;
esac