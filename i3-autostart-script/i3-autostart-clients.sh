#!/usr/bin/env bash

apps=(
  "firefox"
  "alacritty"
  "firefox https://notion.so https://calendar.google.com/calendar/u/O/r"
  "spotify"
  "alacritty -e htop" 
  "stretchly"
)

arrayLength=${#apps[@]}

for (( i=0; i<${arrayLength}; i++));
do
  # echo "index: ${workspaceNum}; value: ${apps[$i]}"

    workspaceNumber=$(($i + 1))

    if [ "${apps[$i]}" = "stretchly" ];
    then 
        i3-msg "exec ${apps[$i]}"
    else
        i3-msg "workspace ${workspaceNumber}; exec ${apps[$i]}" && sleep ${workspaceNumber} 
    fi
done
