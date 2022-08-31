#How-To add new user and give it ssh access (command line):

Ref1: [medium][1]
Ref2: [askubuntu][2]
Ref3: [askubuntu20][3]

1. First of all, make sure you built your binary with debug flags  
   to see function names & parameters:
    - `-ggdb -O0`

2. To enable core dumps (on ubuntu with apports service):
    - `sudo ulimit -c unlimited`
    - (opt) Or manually by opening the file:
        - `sudo vim /etc/security/limits.conf`
    - You can double check with:
        - `ulimit -c`
        - `cat /var/log/apport.log`
    - To disable core dumps:
        - `sudo ulimit -c 0`

3. Where are my core dumps located (def. locations):
    - `/usr/libexec/abort-hook-ccp%s%c%P%u%g%t%e%P%Ia`
    - Other:
        - `ls /var/lib/apport/coredump/`
    - We can change default locations using sysctl command:
        - `sudo sysctl -w kernel.core_pattern=/coredumps/core-%e`
        - Above command will update the `core_pattern` to:
            - `/proc/sys/kernel/core_pattern`
        - (opt) Make these changes permanent:
            - `sudo vim /etc/sysctl.conf`
            - Paste following line:
                - `kernel.core_pattern=/coredumps/core-%e`

4. View the backtrace in gdb:
    - `gdb <exe> <core_dump_file>
    - Then in the gdb window type one of:
        - `bt`
        - `bt full`
        - `where`

5. You can run your executable directly with gdb:
    - `gdb <path/to/exe>`
    -  Pass executable with arguments:
        - `gdb --args <path/to/exe> <exe_arguments>`
    - Set `catch` points for catching ex. on `throw` or `catch`, then run will
      stop on the first `catch`
        - `catch throw`
        - `catch catch`
    - Run it with the r command:
        - `r`
    - View the bactrace (call stack)
        - `bt`
    - Quit when done:
        - `q`

[1]: <https://medium.com/@sourabhedake/core-dumps-how-to-enable-them-73856a437711#:~:text=To%20enable%20dumps%2C%20we%20need,size%20of%20a%20core%20dump.> "medium"
[2]: <https://askubuntu.com/questions/966407/where-do-i-find-the-core-dump-in-ubuntu-16-04lts> "askubuntu"
[3]: <https://askubuntu.com/questions/1349047/where-do-i-find-core-dump-files-and-how-do-i-view-and-analyze-the-backtrace-st/1349048#1349048> "askubuntu20"
