#How-To Move user home directory (cmd):

1. Create new home directory for the user:
    - `sudo mkdir <new_home_dir>`

2. Move existing user home directory to the new one:
    - `sudo cp -pr /home/<username> /<new_home_dir>/<username>`

3. Modify `/etc/passwd` to point the system to the new user's hme:
    - `sudo vim /etc/passwd`
    - Find the line for the user that had home dir moved
    - Update filed `/<old_home_dir/<username>` to `/<new_home_dir>/<username>`
