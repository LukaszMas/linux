# How-To Add authorized_keys for ssh login (cmd):

1. On your device create `$HOME/.ssh` directory if it does not exist:
    - `mkdir .ssh && cd .ssh`
    - `vim authorized_keys`
    - Copy and paste your public ssh key
    - Make sure that the permissions to following files are correct: [source][1]
        - `.ssh` dir has perrmisions of `700` or `755`
        - `.ssh/authorized_keys` file has `600` permissions

2. To preview your public key in the terminal you can use:
    - `cat ~/.ssh/id_ed25519.pub`
    - `sudo vim /etc/ssh/sshd_config`
    - Future ssh sessions will be affected by the saved changes.

[1]: <https://unix.stackexchange.com/questions/36540/why-am-i-still-getting-a-password-prompt-with-ssh-with-public-key-authentication> "stackoverflow"
