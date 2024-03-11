#!/bin/bash

# Define the URL of the wallpaper repository
repo_url="https://raw.githubusercontent.com/yuki6942/wallpaper/main/"

# Find the last number of the PNG files
last_num=$(ls -v *.png | tail -n 1 | sed 's/[^0-9]*//g')

# Start the markdown content with the header and introduction
echo "### Wallpaper" > README.md
echo "" >> README.md
echo "Random wallpaper I found." >> README.md
echo "Some were taken from this repository [here](https://github.com/Ruixi-rebirth/wallpaper)" >> README.md
echo "" >> README.md
echo "Choose a wallpaper from the dropdown list:" >> README.md
echo "" >> README.md
echo "<details>" >> README.md
echo "<summary>Click to Expand</summary>" >> README.md
echo "" >> README.md

# Loop through indices starting from 01 up to the last number found
for ((i=1; i<=last_num; i++)); do
    # Print the markdown syntax for each wallpaper entry and append to README.md
    printf "%d. ![Wallpaper %02d](%s%02d.png)\n" "$i" "$i" "$repo_url" "$i" >> README.md
done

# End the markdown content
echo "" >> README.md
echo "</details>" >> README.md

