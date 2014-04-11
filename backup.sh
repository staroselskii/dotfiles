#!/bin/bash
 
DAY0=`date -I`
DAY1=`date -I -d "1 day ago"`
 
SRC="/"
TRG="/home/george/hard/backups/$DAY0"
LNK="/home/george/hard/backups/$DAY1"
OPTS="-axvH --delete --link-dest=$LNK"
LOG=/home/george/hard/backups/.log
 
echo "$DAY0:" >> $LOG
rsync $OPTS $SRC $TRG 1>/dev/null 2>>$LOG
echo "Backup done" | mail -s "Back-up on $DAY0" gosha371@gmail.com
