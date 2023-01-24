#How-To Recover removed/deleted user home directory to default (cmd):

Ref guide at: [thegeekdiary][1]

1. To restore a sub directory/files inside your home dir:
    - `sudo cp -r /etc/skel/<dir>/ ~/`

2. Restore whole home directory:
    - `sudo cp -r /etc/skel/* ~/`
    - Confirm that all is there:
        - `ls -lart /home/<username>/`

3. Re-log the <username> to activate the changes

[1]: <https://www.thegeekdiary.com/how-to-restore-files-under-users-home-directory-to-default-in-linux/> "thegeekdiary.com"
