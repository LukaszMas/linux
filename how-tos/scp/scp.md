# How-To scp (secure copy protocol) (cmd):

Ref guide at: [stackoverflow][1]

1. Remarks:
    - Always remember about the man pages:
        - `man scp`
    - The `-p` flag for `scp` differes from `ssh` (use `-P` instead for port):
        - `-p` is used to perseve modification times, access times,  
        and modes from the original file.

2. Usage:
    - `scp -P <port> <user>@<host>:/<file> <destination>`
    - `scp -P <port> -r <user>@<host>:/<directory> <destination>`

3. Notes:
    - Determine the port being used by the SSH daemon with SSH connections:
        - `sudo grep Port /etc/ssh/ssh_config`
        - `sudo netstat -tnlp | grep sshd`
        - `sudo netstat --tcp --numeric-ports --listening --program | grep sshd`

[1]: <https://stackoverflow.com/questions/10341032/scp-with-port-number-specified> "stackoverflow"
