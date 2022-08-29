# How-To Add custom 'Open With' program:

Ref guide at: [blog.robertelder.org][1]

1. In order to add your application into the `Open With` list, you need to add  
   a `<my program.desktop` entry for it. There are two main directories to put  
   it in:
    - `/usr/share/applications/`
    - `/home/<username>/.local/share/applications/`
    - choose one and proceed ex:
        - `cd /usr/share/applications/`

2. Now create a `example.desktop` file with `sudo` priviliges`:
    - sudo vim <my_custom_thing.desktop>`
    - paste and modify the following as needed:
        - ```
          [Desktop Entry]
          Version=1.0
          Exec=<executable path> %f
          Name=<executable name>
          Comment=<program description>
          Terminal=<true/false>
          Type=Application
          Categories=application;
          ```

[1]: <https://blog.robertelder.org/custom-open-with-program-ubuntu/> "blog.robertelder.org"
