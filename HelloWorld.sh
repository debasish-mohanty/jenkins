#!/bin/bash

userhost=$(whoami)@$(hostname)
echo "User and Host: $userhost"

if ! command -v figlet &> /dev/null; then
     echo "figlet is not installed. Installing figlet..."
     sudo apt-get install -y figlet # Assuming a Debian-based system, adjust this command for your specific package manager
fi

echo "Hello, World!" | figlet
