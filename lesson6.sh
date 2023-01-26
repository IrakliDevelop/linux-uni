#!bin/bash

# display every line of toto file which contains the word "Linux" or "linux" 
# and also display 2 lines before 

cat toto | grep -i linux -B 2

# display every line of toto file which contains the expression ".*" and ".|"

cat toto | grep -E ".*|."

# display every line of toto file which contains only N 

cat toto | grep -E "^N$"

# display every line of toto file which contains 'btu' repeated at least 3 times in a row

cat toto | grep -E "btu{3,}"

# display lines of toto file which contains the following IP addresses: 192.168.2.105, 217.147.231.59

cat toto | grep -E '192\.168\.2\.105|217\.147\.231\.59'