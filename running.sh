#Shell script to check for any running shell scripts.

#!/bin/bash
proc=`ps aux | grep -e "bash\s\w*" | wc -l`
if [[ $proc > 3 ]]
then
    echo "Running shell scripts exist."
else
    echo "No running shell scripts!!"
fi
