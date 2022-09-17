#!/bin/bash
# A script that somewhat mimics behaviour of `watch`
# (educational purpose)

# Print all commands
#set -x
# Exit script on any error
#set -e

trap "term" SIGINT SIGHUP SIGTERM
term() {
    echo "Caught signal: "
    clear
    # restore stty state
    stty "$state"
    exit 1
}

# save stty current state
state=$(stty -g)
unhide_cursor() {
    #echo "script exited with code: $?"
    printf '\e[?25h'
}

trap "unhide_cursor" EXIT

# Hide the cursor (there is probably a much better way to do this)
printf '\e[?25l'
# keyboard input is not echoed
stty -echo
# NOTE: For passwords (no stty shenanigans) use:
# read -s password
clear

while true
do
    # Move the cursor to the top of the screen but don't clear the screen
    printf '\033[;H'
    $1
    sleep 0.1
done
