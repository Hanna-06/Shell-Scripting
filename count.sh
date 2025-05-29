#Shell script to count lines, words & characters in its input without using wc.

#!/bin/bash
lines=0
words=0
characters=0
echo "Enter text :"
while IFS= read -r line
do
    lines=$((lines + 1))
    characters=$((characters + ${#line}))
    for word in $line
    do
        words=$((words + 1))
    done
done
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $characters"
