# How-To Add custom shortcut on Ubuntu desktop:

Ref guide at: [linuxconfig.com][1]

1. Dependencies `xdg-utils`(Cross-Desktop Group) - a set of tools that allows  
   applications to easily integrate with the desktop environment of the user,  
   regardless of the specific desktop environment that the user runs:
    - `sudo apt-get install xdg-utils`

2. Create an `example.desktop` file, with the following content:
    - ```
      #!/usr/bin/env xdg-open
      [Desktop Entry]
      Version=1.0
      Exec=<executable path>
      Name=<executable name>
      Comment=<program description>
      Terminal=<true/false>
      Type=Application
      Icon=<path to the icon .png/.jpg>
      Categories=application;
      ```

3. Edit the content to match your program path, give it a name, add comment,  
   mark it as terminal app if such, and provide path for the icon.

4. If provided `Exec` path is correct you will be able to:
    - Right-click on the `example.desktop` file to `Allow Launching`
    - Now you should be able to launch application from newly created shortcut

[1]: <https://linuxconfig.org/how-to-create-desktop-shortcut-launcher-on-ubuntu-20-04-focal-fossa-linux> "linuxconfig.org"
