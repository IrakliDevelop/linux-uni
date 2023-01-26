#!/bin/bash

# Let's say you are standing in the /home/user/Documents directory. Go to
#the /usr/share/common-licenses directory. Use both, the absolute and
#the relative path.
cd /usr/share/common-licenses
cd ../../usr/share/common-licenses

# Suppose you are standing in the /usr/local/bin directory. Go to the
# /usr/share/common-licenses directory. Use both, the absolute and the
# relative path.
cd /usr/share/common-licenses
cd ../../../usr/share/common-licenses

# Suppose you have a filename toto containing another filename. Display the content of the latter file on the screen. Do the operation in the shell with and without a pipe.
cat $(cat toto)  # without pipe

# Suppose you have a filename toto containing another filename that contains
# another filename as well. Display the size of the latter file on the screen. Do the
# operation in the shell with and without a pipe.
wc -c $(cat $(cat toto))  # without pipe

# Suppose you have a filename foo in the bar/ directory containing the full path
# to another filename. Display the size of the latter file on the screen. Do the
# operation in the shell with and without a pipe.
wc -c $(cat bar/foo)  # without pipe

# Create a filename toto if no titi filename exists. Do not display an error
# message on the screen.
ls titi 2> /dev/null || touch toto

# Run the "ls -l" command on one terminal and display the output on the other one.
ls -l | tee /dev/pts/0

# Find all .html files in your HOME directory and redirect the list to the fichier.html file.
find $HOME -name "*.html" > fichier.html

# Find all files whose contents were last modified 45 minutes ago.
find . -mmin +45

# Find all files whose contents were last accessed 15 days ago.
find . -atime +15

# Find all empty regular type files.
find . -type f -empty

# Find all .mp4 or .avi files (extension can be in lowercase, uppercase or mixed) in your home directory and delete them.
find $HOME -type f -iname "*.mp4" -o -iname "*.avi" -delete

# Find all .mp4 or .avi files (extension can be in lowercase, uppercase or mixed) in your home directory larger than 100 MB and delete them.
find $HOME -type f -iname "*.mp4" -o -iname "*.avi" -size +100M -delete

# Display 5-10 lines of 2-5 columns of the file toto and redirect the output to the
# following filename: toto_YYMMDDHHMM (where, YYMMDDHHMM is the
# current year, month, day, hour and minute)
head -n 10 toto | cut -d: -f2-5 > toto_$(date +%Y%m%d%H%M)

# Count files in your home directory.
ls $HOME | wc -l

# Join two file: f1.txt and f2.txt. the first field of f1.txt and the third
# field of f2.txt are the same.
join -1 1 -2 3 f1.txt f2.txt