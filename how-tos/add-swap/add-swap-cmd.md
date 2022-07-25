#How-To Add swap memory through swapfile (command line):

1. Change directory to the drive you want to create swapfile:
    - `cd <dir>`

2. Allocate 12 Gb memory (create a file):
    - `sudo fallocate -l 12GiB 12G-swapfile`

3. Restrict security on the file to root access only:
    - `sudo chmod 600 12G-swapfile`

4. Format the swap file:
    - `sudo mkswap 12G-swapfile`

5. Activate the swap file:
    - `sudo swapon 12G-swapfile`

6. Preview the system's swap files::
    - `sudo swapon --show`

7. To make it persistent across reboots:
    - Append the following line in your fstab:
        - `sudo vim /etc/fstab`
        - /<location>/12G-swapfile none swap sw 0 0
