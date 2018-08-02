#!/bin/sh

# This script parse the content of the wallpaper folder under the ome pictures
# directory.
# It then uses the feh program to apply it as a desktop background

IMAGE=$(find "$HOME"/Pictures/Wallpapers -iregex '.*wallpaper\.\(jpg\|png\)')
feh --bg-fill "$IMAGE"
