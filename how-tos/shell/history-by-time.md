# How-To Search shell history with visible command time (cmd):

1. To view date & time of a command in shell history:
    - Set the `HISTTIMEFORMAT` environment variable to ex.:
        - `HISTTIMEFORMAT="%Y-%m-%d %T "`
        - This will make date displayed next to the past commands
    - Now open history and see this formatting applied just for this session:
        - `history`

2. To set this feature as persistent across sessions, modify `.bashrc` file:
    - `vim ~/.bashrc`
    - Add the following line in the open file:
        - `HISTTIMEFORMAT="%Y-%m-%d %T "`

3. You may notice a variable called `HISTCONTROL`:
    - This set to `ignoreboth` will ignore spaces in front of the commands
    - It might be useful when needed to hide sensitive stuff from history
