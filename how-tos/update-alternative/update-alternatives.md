#How-To Update alternatives (cmd):

Ref guide at: [fosslinux.com][1]

1. To create alternatives for a program:
    - `sudo update-alternatives --remove-all <program_name>`
    - `sudo apt-get install <program_name_v1>`
    - `sudo update-alternative --install /usr/bin/<program_name>
      <program_name> /usr/bin/<program_name_v1> <number1>`
    - `sudo apt-get install <program_name_v2>`
    - `sudo update-alternative --install /usr/bin/<program_name>
      <program_name> /usr/bin/<program_name_v2> <number2>`
    - (confirm) `sudo update-alternatives --config <program_name>`

2. Example setup on different gcc versions plus g++ as slave:
    - `sudo update-alternatives --remove-all gcc`
    - `sudo update-alternatives --remove-all g++`
    - `sudo apt-get install gcc-8 g++-8`
    - `sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 8 --slave /usr/bin/g++ g++ /usr/bin/g++-8`
    - `sudo apt-get install gcc-9 g++-9`
    - `sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 9 --slave /usr/bin/g++ g++ /usr/bin/g++-9`
    - Check and select alternatives:
        - `sudo update-alternatives --config gcc`
    - Confirm:
        - `gcc --version`
        - `g++ --version`

[1]: <https://www.fosslinux.com/39386/how-to-install-multiple-versions-of-gcc-and-g-on-ubuntu-20-04.htm> "fosslinux.com"
