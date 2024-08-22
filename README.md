Explanation:

    Arguments:
        The script now expects three arguments:
            SOURCE_DIR: The directory you want to back up.
            DEST_DIR: The directory where the backup will be stored.
            LOG_FILE: The file where logs will be written.

    Usage:
        The script checks if exactly three arguments are provided. If not, it displays a usage message and exits.
        The variables SOURCE_DIR, DEST_DIR, and LOG_FILE are set based on the arguments passed to the script.

To run the script first you have to make executable 

```
chmod +x backup.sh
```

Executing the script from the terminal with the requires 3 arguments:

```
    ./backup.sh /path/to/source /path/to/backup /path/to/logfile.log
```

This allows you to specify different directories and log files each time you run the script, making it more flexible.
