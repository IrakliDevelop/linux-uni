#!bin/bash

# edit every occurance of /bin/sh with /bin/bash in /etc/passwd file using sed

sed -i 's:/bin/sh:/bin/bash:g' /etc/passwd

# add a word 'début' in the beginning of every line of toto file using sed

sed -i 's:^:début:g' toto

# delete the first occurance of the symbol 'N' in every line of toto file using sed

sed -i 's:N::1' toto

# delete every line which not contains the word 'Linux' ignoring case in toto file using sed

sed -i '/Linux/!d' toto

# put every uppercase letter in toto file in braces using sed

sed -i 's/\([A-Z]\)/{\1}/g' toto