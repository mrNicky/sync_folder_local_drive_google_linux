#!/bin/bash

cd /home/yourusername/Desktop && ls Prefix_* -d | xargs -I % rclone copy % mygoogledrive:drive/% \
&& echo "sauvegarde" `date` >> /home/yourusername/log_drive.txt &

