#!/bin/bash

IMAGE_FOLDER="/home/devartist/.config/wallpaper"

if [ ! -d "$IMAGE_FOLDER" ]; then
    echo "Error: image folder not found."
    exit 1
fi

image_files=("$IMAGE_FOLDER"/*)

if [ ${#image_files[@]} -eq 0 ]; then 
    echo "Error: no image file found."
    exit 1
fi

random_index=$((RANDOM % ${#image_files[@]}))

random_image=${image_files[$random_index]}

wal -q -i $random_image

exec swaybg -i $random_image

echo "Wallpaper set to: $random_image" 
