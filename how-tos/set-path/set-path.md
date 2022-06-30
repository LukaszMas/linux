#How-To set $PATH as permanent (cmd):

Ref guide at: [stackoverflow][1]

1. For current user add in your `~/.profile` or `~/.bashrc`:
    - `exporti PATH="$PATH:/path/to/dir"`

2. (opt) To make it persistent across all users (system wide):
    - `sudo vim /etc/environment`
    - add desired path at the end of `PATH` definition followed by a colon `:`
    - source edited file with:
    - `source /etc/environment`

[1]: <https://stackoverflow.com/questions/14637979/how-to-permanently-set-path-on-linux-unix> "stackoverflow"
