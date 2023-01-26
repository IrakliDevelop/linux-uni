#!/bin/bash

# will need to use chmod +x to make it executable
# to run the server, run the script in a terminal
# if you want to connect to the chat server, use nc localhost 8888

# Set the hostname and port for the chat server
host=localhost
port=8888

# Start the chat server in the background
nc -l $port > /dev/null &

# Display a prompt and wait for input
while true; do
  read -p "Enter message: " message
  # Send the message to the chat server
  echo "$message" | nc $host $port
done

