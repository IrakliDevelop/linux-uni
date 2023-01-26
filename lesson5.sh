#!bin/bash

# create file toto in $HOME/tmp directory, so that it can be read and modified but not deleted
touch $HOME/tmp/toto
chmod 644 $HOME/tmp/toto

# open file which was last modified in $HOME/tmp directory with vi
vi $(ls -t $HOME/tmp | head -n 1)

# search all the commands with SUID bit set
find / -perm -4000 -type f -exec ls -l {} \;

# block user, whose name is in /etc/passwd file on line N. N is given as a parameter to the script, from logging in
user=$(sed -n "$1p" /etc/passwd | cut -d: -f1)

# create file toto in $HOME/titi/, so that we can't ls titi directory but we can read toto file
touch $HOME/titi/toto;
chmod 500 $HOME/titi;
chmod 400 $HOME/titi/toto;