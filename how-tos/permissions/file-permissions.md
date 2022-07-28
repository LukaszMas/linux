# How-To Check and modify file/directory permissions (cmd):

Ref guide at: [pluralsight.com][1]

1. Show permissions:
    - Of the entire directory:
        - `sudo ls -la
    - Of the specific file:
        - `sudo ls -l <filename>
    - Recap of the permissions `(-)(rwx)(r-x)(r--)` meaning:
        - The the first symbol at the very front indicates:
            - "-" a file
            - "d" a directory
            - "l" a symlink
        - The first group `(rwx)` indicates permissions for the owner
        - The second group `(r-x)` indicates permissions for the group
        - The third group `(r--)` indicates permissions for others

2. Change permissions add/remove:
    - To add read write and execute permissions you can use one of:
        - `sudo chmod +rwx <filename>`
        - `sudo chmod 700 <filename>
    - To remove read write and execute permissions you can use one of:
        - `sudo chmod -rwx <filename>`
        - `sudo chmod 000 <filename>
    - Add `g` to change permissions for the group:
        - `sudo chmod g+rwx <filename>`
    - Add `o` to change permissions for the other users:
        - `sudo chmod o+rwx <filename>`
    - Add `ogo` or `a` to change permissions for everyone:
        - `sudo chmod ugo+rwx <filename>`
        - `sudo chmod a+rwx <filename>`
    - To change permissions to only read for everyone use:
        - `sudo chmod a=r <filename>`

3. (Bonus) Permisions in numeric code:
    - You might need to use numeric codes instead of "-", "r", "w" or "x":
        - `0` = no permission ("---")
        - `1` = Execute ("--x")
        - `2` = Write ("-w-")
        - `3` = Write + Execute ("-wx")
        - `4` = Read ("r--")
        - `5` = Read + Execute ("r-x")
        - `6` = Read + Write ("rw-")
        - `7` = Read + Write + Execute ("rwx")
    - That way you can type the following to give rwx permissions to everyone:
        - `sudo chmod 777 <foldername>`

[1]: <https://www.pluralsight.com/blog/it-ops/linux-file-permissions> "pluralsight.com"
