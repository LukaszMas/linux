#How-To Discover & print hosts in the network  (cmd):

1. First you want to find your network's adapter IP:
    - `ip a`

2. Now use nmap tool to scan network for available host:
   (The `-sP` option tells Nmap to skip port scan after host discovery)
    - `sudo nmap -sP xxx.xxx.xxx.0/24`
