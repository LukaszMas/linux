# How-To make ssh sessions long-lived (cmd):

Ref guide at: [stackoverflow][1]

1. On the client side create `$HOME/.ssh/configi` file if it does not exist:
    - `vim ~/.ssh/config`
    - Copy and paste and edit the following:
        - ```
          Host remotehost
            HostName host.ip
            ServerAliveInterval 240
            ServerAliveCountMax 5
          ```
    - The config file must not be world-readable, so execute:
        - `chmod 600 ~/.ssh/config`

2. On the server side modify `/etc/ssh/sshd_config`:
    - `sudo vim /etc/ssh/sshd_config`
    - ```
      ClientAliveInterval 240
      ClientAliveCountMax 5
      ```
    - Future ssh sessions will be affected by the saved changes.

[1]: <https://stackoverflow.com/questions/25084288/keep-ssh-session-alive> "stackoverflow"
