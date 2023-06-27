#!/bin/bash

# Set up variables
github_username="debasish-mohanty"
repository_name="jenkins.git"
commit_message="Added hello.txt"
current_date=$(date +"%Y-%m-%d")
current_time=$(date +"%H-%M-%S")
file_name="hello_${current_date}_${current_time}.txt"

# Display "Hello, world!" on the console
echo "Hello, world!"

cd /home/debasish/jenkins/
# Write "Hello, world!" to a file
echo "Hello, world!" > /home/debasish/jenkins/output/"$file_name"

# Add the file to the Git repository
git add "output/$file_name"

# Commit the changes
git commit -m "$commit_message"

# Push the changes to GitHub
git push "https://github.com/$github_username/$repository_name.git"

