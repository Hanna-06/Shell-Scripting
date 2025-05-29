#Shell script to print a glossary file in reverse order using array.

#!/bin/bash
read -p "Enter the file name: " file_path
mapfile -t lines < "$file_path"
total_lines=${#lines[@]}
for (( i = $total_lines - 1; i >= 0; i-- )); do
  echo "${lines[i]}"
done
