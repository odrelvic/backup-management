# backup-management
Bash script files to manage the backup file system for the server.

## backupScript.sh
Script to compress files from a "input folder" to a "output folder" in the tar.gz format.
Compressed files are saved in the "YEAR-MONTH-DAY H:M:S" format.

## DriverBackup.sh
Script to manage the folder, by deleting the oldest file in the folder, preventing to exceed the maximum folder size.

