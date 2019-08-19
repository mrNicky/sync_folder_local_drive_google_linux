# sync_folder_local_drive_google_linux
Syncronise local drive with your google drive

### Set up rclone rclone

```sudo apt install rclone```

### Config rclone with your google drive

```rclone config```

### Follow instructions 

Follow instructions and give the name of your google drive: mygoogledrive
You can press ENTER and forgot Google application client id and client secret, 
in the end, your browser will open and ask you is your want to rclone access to your google account. Allow it and come back to your terminal and accept it. 

```2019/07/16 16:27:20 NOTICE: Config file "/home/sk/.config/rclone/rclone.conf" not found - using defaults
No remotes found - make a new one
n) New remote
r) Rename remote
c) Copy remote
s) Set configuration password
q) Quit config
n/r/c/s/q> n
name> mygoogledrive```


### Mount your drive

Example if you want your drive mount in your desktop, change your yourusername in the code.
It is possible the language is different (Germany, France, Russia...) adapt the code

```
mkdir /home/yourusername/Desktop
rclone mount mygoogledrive: ~/drive/
```

### Rename folders which you want to send to the drive

Your can change Prefix_ with what you want 

```ls -I drive | xargs -I {} mv {} Prefix_{}```

### Edit bash script file_save.sh

Change "yourusername" and if you don't use english the path name folder
The bash script create log_drive.txt to keep track of upload statments to your google drive in your /home/yourusername/

### Place bash script in /usr/local/bin

We can place your script in other folder but keep the the path in your mind for crontab

### Create a cron task

```crontab -e``` 

You to know some vim command if your crontab -e is associate with vim

and add this line:
Note: this task run at 16:00 everyday, you can change hour, find an hour when your are in work
Don't panic, this  bash script run in back end even if your are busy 

```00 16 * * * /usr/local/bin/file_save.sh```


