#!bin/bash

# we have a file toto1. we want to display contents of 2-5 columns 5-10 rows and redirect it to file toto2
# use space as delimiter
cat toto1 | cut -d' ' -f2-5 | head -n 10 | tail -n 5 > toto2

# sort /etc/passwd by 4th column number value descending
sort -t: -k4 -nr /etc/passwd

# find and display number of repeated lines in file toto1
cat toto1 | uniq -c | tr -s ' ' | sort -nr | head -n 1 | cut -d' ' -f2

# we have files like 1.txt 2.txt ... 9.txt. we want to create a file called tech_spec.txt which contains contents of all these files
cat {1..9}.txt > tech_spec.txt

# display tech_spec.txt size in bytes 
wc -c tech_spec.txt
# display tech_spec.txt characters count
wc -m tech_spec.txt