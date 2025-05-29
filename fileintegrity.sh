#Shell script to check file integrity. (Creates hash for file and checks changes)

#!/bin/bash
echo 'To test integrity of a file in a directory at '$HOME ':'
read -p "Enter the name of file: " file
calculate_hash() {
  sha256sum $file | awk '{print $1}'
}
if [ ! -f $file ]; then
  echo "File does not exist!!"
  exit 1
fi
original_hash=$(calculate_hash $file)
echo "Original hash: $original_hash"
read -p "Make changes to the file and press Enter when done."
new_hash=$(calculate_hash $file)
echo "New hash: $new_hash"
if [ "$original_hash" == "$new_hash" ]; then
  echo "File integrity is intact!"
else
  echo "File has been modified!"
fi
