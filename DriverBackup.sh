
#!/bin/bash

# VARIABLES
# Driver max size
MAX_SIZE="10240"
#Size equals to 10MB due to testing, you can change this.
#13GB equals to 13631488 kB.
# Backup path
BACKUP_PATH="/tmp/testing"

# Check the current backup folder size
# (du = gets the folder size); (grep = only take numbers from the previous result);
# (tail = take the last result from the list generated by 'grep' command, which corresponds to the total)
CURRENT_SIZE="`du -cs -h $BACKUP_PATH | grep -o '[0-9]*' | tail -n 1`"


if [ "$CURRENT_SIZE" -gt "$MAX_SIZE" ]; then
  echo "···> The current size ($CURRENT_SIZE) is bigger than max size ($MAX_SIZE)."
  # TODO delete oldest file

  #Checkbox before the file be  deleted.
while true;  do
  read -p "The system will begin to delete the oldest file. Do you wish to continue? Press Y for yes, or N for no. " yn
  case $yn in
    [Yy]* ) echo "Deleting oldest file..." rm -vi /tmp/testing* $(ls -t | tail -1) ; break;;
    [Nn]* ) printf "Current backup folder size is $CURRENT_SIZE, nothing changed" exit; break;;
    *) echo "Please answer yes or no";;
  esac
done

 
fi

# REFERENCES:
# Check folder size: https://stackoverflow.com/questions/16661982/check-folder-size-in-bash#16662027
# Grep numbers from a result: https://askubuntu.com/questions/184204/how-do-i-fetch-only-numbers-in-grep#184216 and https://stackoverflow.com/questions/8402919/how-to-make-grep-select-only-numeric-values
# Get last result from grep: https://stackoverflow.com/questions/24014194/how-to-grep-the-last-occurrence-of-a-line-pattern#24014737
