#!/bin/bash

generateIso () {
  convert \
   \( \( "$1" -scale 512x512\< \) -alpha set -virtual-pixel transparent \
      +distort Affine '0,512 0,0   0,0 -87,-50  512,512 87,-50' \) \
   \( \( "$2" -scale 512x512\< -brightness-contrast -20,-20% \) -alpha set -virtual-pixel transparent \
      +distort Affine '512,0 0,0   0,0 -87,-50  512,512 0,100' \) \
   \( \( "$3" -scale 512x512\< -brightness-contrast -40,-40% \) -alpha set -virtual-pixel transparent \
      +distort Affine '  0,0 0,0   0,512 0,100    512,0 87,-50' \) \
   \
   -background none -compose plus -layers merge +repage \
   -compose over "$4"
}

mkdir icons

for filename in assets/minecraft/textures/block/*.png; do
  echo "$filename"
  name="$(basename "$filename" .png)"
  noside="$(echo "$name" | sed 's/^\(.*\)_side$/\1/')"
  if [ -f assets/minecraft/textures/block/${noside}_top.png ]
  then
    echo "top"
    if [ -f assets/minecraft/textures/block/${noside}_front.png ]
    then
      echo "front"
      generateIso "assets/minecraft/textures/block/${noside}_top.png" "assets/minecraft/textures/block/${noside}_front.png" "$filename" "icons/$noside.png"
    else
      generateIso "assets/minecraft/textures/block/${noside}_top.png" "$filename" "$filename" "icons/$noside.png"
    fi
  else
    echo "no top"
    generateIso "$filename" "$filename" "$filename" "icons/$name.png"
  fi

done

yes | cp -vrf assets/minecraft/textures/item/*.png icons/

