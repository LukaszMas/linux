#How-To Add a new SATA drive to Ubuntu (cmd):

1. Plug in disk and reboot

2. Check that device is seen by your OS:
    - `lsblk`

3. Delete all existing partitions on the disk (ex. `/dev/sda1`
    - `sudo parted /dev/sda1`

4. Make the ext4 file system on the new partition:
    - `sudo kfs.ext4 /dev/sda1`

5. Create mount point directory:
    - `sudo mkdir <dir_name>`

6. Manually test mount the device with:
    - `sudo mount /dev/sda1 <dir_name>`

7. Touch files to make sure that mount worked and then unmount:
    - `sudo touch <filename1>`
    - `sudo umount /dev/sda1`

8. Add a line in the `/etc/fstab` to mount the drive automatically:
    - `sudo vim /etc/fstab`

9. Test auto mounting with:
    - `sudo mount -a`

10. Reboot the system:

11. Validate that drive is mounted with:
    - `df`
