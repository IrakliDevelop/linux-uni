#!bin/bash

# display LANG variable value without encoding
echo $LANG | cut -d. -f1

# display processess PID, name and memory usage, sorted by memory usage
ps -eo pid,comm,%mem | sort -nr -k3 | head -n 10

# display how many more processes are running user1 than user2
ps -eo user | grep user1 | wc -l
ps -eo user | grep user2 | wc -l

# empty $HOME/tmp directory. delete hidden files too but not . and ..
rm -rf $HOME/tmp/*