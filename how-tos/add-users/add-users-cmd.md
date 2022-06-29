#How-To add new user and give it ssh access (command line):

Ref guide at: [linuxuprising][1]

1. Create a new `<username>` (using /etc/default/useradd):
    - `sudo useradd <username>`

2. (opt) Create a new `<username>` with custom /home directory:
    - `sudo useradd -m -d /<custom_home_dir>/<username> <username>`

3. Add password to the newly created user:
    - `sudo passwd <username>`
    - type new `<pwd>`
    - repeat new `<pwd>`

4. Add groups to the user (ex. sudo):
    - `sudo usermod -aG sudo <username>`

5. Change the active user to add authorized keys:
    - `su <username>`
    - `type <password>`
    - `cd ~/home && mkdir .ssh && cd .ssh`
    - `vim authorized_keys`
    - copy & paste the user’s public-key

6. Set default shell for the `<username>` on login (/etc/passwd):
    - `sudo vim /etc/passwd`
    - edit desired <username> default shell at the end of its entry
    - (optional) To change just for current user:
        - `chsh -s bin/bash <username>`
    - (optional) To change default shell at ssh:
        - `ssh -t <user@host> 'bash -l'`
        - For windows machine:
            - `ssh -t <user@hostname> "powershell"`

7. Re-log the <username> to activate the changes

[1]: <https://www.linuxuprising.com/2021/01/how-to-change-default-shell-in-linux.html#:~:text=To%20change%20the%20shell%20for%20your%20user%2C%20run%3A&text=Login%20Shell%20%5B%2Fbin%2Fbash,and%20press%20the%20Enter%20key.> "linuxuprising"
