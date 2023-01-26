#!bin/bash

# display servers network interfaces names and IP addresses
ifconfig | awk '/^[a-z]/ {print $1} /inet / {print $2}'

# display server routing table
route
