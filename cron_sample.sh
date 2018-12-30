#!/usr/bin/env bash

# Sample, customize and add a line to your crontab
# "crontab -e" to edit, add this line which runs every 15 minutes
*/15 * * * * ~/<script dir>/cron_sync.sh 

#cron_sync.sh should contain your items for syncing
happy_push ~/Movies/<source directory> <bucket> <remote dir> 


