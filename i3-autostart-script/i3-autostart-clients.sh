#!/bin/bash

apps=(
  "firefox"
  "alacritty"
  "firefox https://notion.so https://calendar.google.com/calendar/u/O/r"
  "spotify"
  "alacritty -e htop" 
)

arrayLength=${#apps[@]}

for (( i=0; i<${arrayLength}; i++));
do
  # echo "index: ${workspaceNum}; value: ${apps[$i]}"

  workspaceNumber=$(($i + 1))

  i3-msg "workspace ${workspaceNumber}; exec ${apps[$i]}" && sleep ${workspaceNumber}

 

done

