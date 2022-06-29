# How-To install and configure TightVNC server (cmd):

Ref guide at: [digitalocean][1]

1. Install server and prerequisites:
    - `sudo apt-get install xfce4 xfce4-goodies tightvncserver`
    - (opt) Test installation:
        - `vncserver`
        - You will be prompted to type new passwords
        - The # of the desktop will be the number you will have to provide in  
          the vnc viewer (ex. vinagre `sudo apt-get install vinagre`)
    - To kill the vnc server type:
        - vncserver -kill :#

2. Setup server environment for vnc sharing:
    - Before you modify the `xstartup` file, backup the original one:
        - `mv ~/.vnc/xstartup ~/.vnc/xstartup.bak`
    - Now create a new `xstartup` file and open it in text editor:
        - `vim ~/.vnc/xstartup`
    - Copy and paste the following:
        - ```
          #!/bin/bash
          xrdb $HOME/.Xresources
          startxfce4 &
          ```
    * Make the new file executable:
        - `sudo chmod +x ~/.vnc/xstartup`

3. Tunneling via ssh:
    - Open new cmd window on your client machine and type:
        - `ssh -L 5901:127.0.0.1:590# -p 2222 -C -N -l username@host`

4. Connecting to the VNC Desktop securely with your favorite vnc viewer:
    - Open the vnc viewer and give it your localhost ip & port: `127.0.0.1:5901`
    - (known issues) If you encounter problems opening command line window:
        - Set your default/preferred shell in the Xfce to `xfce-terminal`

5. Running VNC server as a System Service (loaded at boot):
    - Create a new unit file:
        - `sudo vim /etc/systemd/system/vncserver-<useranme>@.service`
    - Copy and paste the following modifying the User, Group, WorkingDirectory  
      and the username n the value of PIDfile to match your username:
        - ```
          [Unit]
          Description=Start TightVNC server at startup
          After=syslog.target network.target

          [Service]
          Type=forking
          User=username
          Group=username
          WorkingDirectory=/data/home/username

          PIDFile=/data/home/username/.vnc/%H:%i.pid
          ExecStartPre=-/usr/bin/vncserver -kill :%i > /dev/null 2>&1
          ExecStart=/usr/bin/vncserver -depth 24 -geometry 1280x800 :%i
          ExecStop=/usr/bin/vncserver -kill :%i

          [Install]
          WantedBy=multi-user.target
          ```
    - Next, make sure that the system is aware of the new unit file:
        - `sudo systemctl daemon-relead`
    - Enable the unit file:
        - `sudo systemctl enable vncserver-<username>@#.service
    - Start the vnc server like any other systemd service:
        - `sudo systemctl start vncserver-<username>@#.service
    - Verify the status of your service:
        - `sudo systemctl status vncserver-<username>@#

[1]: <https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-18-04> "digitalocean"
