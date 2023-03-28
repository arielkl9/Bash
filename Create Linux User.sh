#!/bin/bash

# Prompt the user for the username
read -p "Enter the username: " USERNAME

# Prompt the user for the shell type
read -p "Enter the shell type (e.g. /bin/bash): " SHELL_TYPE

# Create the user with the specified shell type
useradd -s "$SHELL_TYPE" "$USERNAME"

# Add the user to sudoers file with restricted privileges
read -p "wanna add user to sudoers?" SU
if [$SU == "yes"]
then
    echo "$USERNAME ALL=(ALL) ALL" | tee -a /etc/sudoers
    #Print a message indicating the user has been added to sudo
    echo "User $USERNAME has been added to sudo."
else
    echo "regular user was created"
fi