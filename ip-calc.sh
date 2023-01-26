#!bin/bash

# to run the script, first make it executable with chmod +x ip-calc.sh
# then run it with ./ip-calc.sh <ip_address>

# Check that an IP address was provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: next_ip.sh <ip_address>"
  exit 1
fi

# Extract the octets of the IP address
octet1=$(echo $1 | awk -F. '{print $1}')
octet2=$(echo $1 | awk -F. '{print $2}')
octet3=$(echo $1 | awk -F. '{print $3}')
octet4=$(echo $1 | awk -F. '{print $4}')

# Increment the fourth octet
octet4=$((octet4+1))

# If the fourth octet overflows, reset it to 0 and increment the third octet
if [ $octet4 -gt 255 ]; then
  octet3=$((octet3+1))
  octet4=0
fi

# If the third octet overflows, reset it to 0 and increment the second octet
if [ $octet3 -gt 255 ]; then
  octet2=$((octet2+1))
  octet3=0
fi

# If the second octet overflows, reset it to 0 and increment the first octet
if [ $octet2 -gt 255 ]; then
  octet1=$((octet1+1))
  octet2=0
fi

# If the first octet overflows, reset it to 0
if [ $octet1 -gt 255 ]; then
  octet1=0
fi

# Construct the next IP address
next_ip="$octet1.$octet2.$octet3.$octet4"

# Display the next IP address
echo "Next IP: $next_ip"