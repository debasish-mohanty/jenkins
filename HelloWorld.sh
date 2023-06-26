#!/bin/bash

if ! command -v figlet &> /dev/null; then
     sudo apt-get install -y figlet # Assuming a Debian-based system, adjust this command for your specific package manager
fi

echo "Hello, World!" | figlet
