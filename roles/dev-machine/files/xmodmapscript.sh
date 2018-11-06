#!/bin/bash
echo "Changing keys..."
# xmodmap -e "clear mod1"

# xmodmap -e "keycode 108 = Alt_L Meta_L"
# xmodmap -e "keycode 64 = ISO_Level3_Shift"
# xmodmap -e "add mod1 = Alt_L Meta_L"
xmodmap -e "keycode 24 = q"
xmodmap -e "keycode 38 = a"
xmodmap -e "keycode 52 = z"
xmodmap -e "keycode 25 = w"


echo "Changed keys!"
echo