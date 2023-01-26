#!/bin/bash

# empty $HOME/tmp directory, but don't delete the directory itself and don't delete . and .. directories
# also delete other hidden files and directories
# rm -rf $HOME/tmp/*

# check if file called foobar exists, if it does create file named titi, if not create file named toto
# also don't display any error messages
# ls foobar 2> /dev/null && touch titi || touch toto 

# write existing files list to file files.txt
# also display this list on second, open terminal
# ls > files.txt;
# cat files.txt | tee /dev/pts/0

# display last directory in PATH variable without awk
echo $PATH | rev | cut -d: -f1 | rev

