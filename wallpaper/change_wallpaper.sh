#!/bin/bash

# Path to the wallpaper folder
WALLPAPER_FOLDER="$HOME/wallpaper/home"  # Update to your wallpaper directory
HYPRPAPER_CONFIG="$HOME/.config/hypr/hyprpaper.conf"  # Update with the correct path to your hyprpaper config

# Kill hyprpaper if it's running
pkill -f hyprpaper

# Pick a random wallpaper from the folder (assuming it's JPG or PNG)
RANDOM_WALLPAPER=$(find "$WALLPAPER_FOLDER" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

# Update hyprpaper config with the new wallpaper
sed -i "s|^preload = .*|preload = $RANDOM_WALLPAPER|" "$HYPRPAPER_CONFIG"
sed -i "s|^wallpaper = LVDS-1,.*|wallpaper = LVDS-1,$RANDOM_WALLPAPER|" "$HYPRPAPER_CONFIG"

# Restart hyprpaper to apply the new wallpaper
hyprpaper

