# backup-management
Bash script files to manage the backup file system for the server.

## backupScript.sh
Script to compress files from a "input folder" to a "output folder" in the tar.gz format.
Compressed files are saved in the "YEAR-MONTH-DAY H:M:S" format.

## DriverBackup.sh
Script to manage the folder, by deleting the oldest file in the folder, preventing to exceed the maximum folder size.

## How-to-basic
The files path isn't universal for every PC. As a consequence of this, you have to change the folder location to your own. 

1. "DriverBackup.sh"
  Open the file with a text editor of your choice (even VSCode!), then search for the variable "BACKUP_PATH" (line 10), and change it to your desired location. Same process in (line 26), after "rm -vi", to the path of your choice.
  
 2. "backupScript.sh"
  Open the file with a text editor of your choice (even VSCode!), then change the variables current folder to the path of your choice.  
  Variables:  
(line 4) backup_path  
(line 7) final_storage  
(line 14) log_file  
  
## Using CRON to schedule the script execution

First, it's common to schedule specific periods of time to execute a script, and in this case, it's necessary to run "backupScript.sh" to prevent exceeding the size of the drive (since the drive limit size isn't infinite). In this time, we are using CRON.

1. DriverBackup.sh
Access the site (https://crontab.guru/), and adjust the time for your choice, before opening the cron file for scheduling the execution.

