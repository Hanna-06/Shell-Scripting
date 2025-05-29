#Shell script to create a file in $USER/class/batch directory.

#!/bin/bash
if [ ! -d "$HOME/class/batch" ];then
	mkdir -p "$HOME/class/batch"
fi
echo "Enter the file to create (with extension) :"
read file
touch "$HOME/class/batch/$file"
echo "File created successfully at $HOME/class/batch directory"
