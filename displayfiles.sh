#Shell script to display the list of files in a directory.

#!/bin/bash
echo 'To display list of files, enter the directory name :'
read dir
if [ ! -d "$HOME/$dir" ]; then
  echo "Directory doesn't exist"
else
  cd "$HOME/$dir"
  echo 'List of files :'
  ls
fi
