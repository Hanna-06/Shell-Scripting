#Shell script to print file names in a directory showing date of creation & serial number of file.

#!/bin/bash
echo 'To display the list of files in a directory at '$HOME' :'
read -p "Enter the name of directory: " file
if [ ! -d "$HOME/$file" ]; then
    echo "Directory "$HOME/$file" does not exist."
else  
      cd "$HOME/$file" || exit
    serial=1
    printf "%-4s %-30s %-20s\n" "Serial" "File Name" "Date Created"
    echo "--------------------------------------------------------"
    for file in *; do
        if [ -f "$file" ]; then       
            creation_date=$(stat -c %y "$file" | cut -d' ' -f1)  
            printf "%-6s %-30s %-20s\n" "$serial" "$file" "$creation_date"          
            ((serial++))
        fi
    done
fi
