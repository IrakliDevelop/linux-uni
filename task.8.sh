#!bin/bash

# we run all the commands using awk

# should show user names and their UID
awk -F: '{print $1, $3}' /etc/passwd

# show toto and titi file combined line count
awk 'END {print NR}' toto titi

# show system user names, whose initial shell is /bin/bash
awk -F: '$7 == "/bin/bash" {print $1}' /etc/passwd

# show all the lines of toto file that have more 4 columns
awk 'NF > 4' toto

# show only non empty lines of toto file
awk 'NF > 0' toto