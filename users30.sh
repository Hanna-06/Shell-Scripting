#Shell script to check whether a user has logged in, continue checking further after every 30 seconds.

#!/bin/bash
while true; do
  read -p "Enter the username to monitor: " username
  while true; do
    timestamp=$(date +"%H:%M:%S")
    if who | grep -q "$username"; then
      echo "[$timestamp] User $username is logged in."
    else
      echo "[$timestamp] User $username is not logged in."
    fi
    sleep 30
  done
done
