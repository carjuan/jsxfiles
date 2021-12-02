#!/bin/bash

apps=(
  "alacritty"
  "brave-browser"
  "brave-browser --new-window https://notion.so"
  "spotify"
)

arrayLength=${#apps[@]}

for (( i=0; i<${arrayLength}; i++));
do
  # echo "index: ${workspaceNum}; value: ${apps[$i]}"

  workspaceNumber=$(($i + 1))

  i3-msg "workspace ${workspaceNumber}; exec ${apps[$i]}" && sleep ${workspaceNumber}

 

done

