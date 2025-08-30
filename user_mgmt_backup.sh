#!/bin/bash

# function to display help menu
show_help() {
    echo " User Management & Backup Script - By Hanan "
    echo "Usage: $0 {add|del|mod|grp|backup} [options]"
    echo ""
    echo " add <username>               Add a new user"
    echo " del <username>               Delete a user"
    echo " mod <username> <new_shell>   Modify user shell"
    echo " grp <groupname>              Create a group"
    echo " backup <dir> <backup_file>   Backup directory"
    echo ""
    exit 1
}

# Function to add user
add_user() {
    if id "$1" &>/dev/null; then
        echo "User '$1' already exists!"
    else
        sudo useradd -m "$1"
        echo "User '$1' added successfully!"
    fi
}

# Function to delete user
del_user() {
    if id "$1" &>/dev/null; then
        sudo userdel -r "$1"
        echo "User '$1' deleted successfully!"
    else
        echo "User '$1' does not exist!"
    fi
}

# Function to modify user shell
mod_user() {
    if id "$1" &>/dev/null; then
        sudo usermod -s "$2" "$1"
        echo "User '$1' shell changed to '$2'"
    else
        echo "User '$1' does not exist!"
    fi
}

# Function to create group
create_group() {
    if getent group "$1" &>/dev/null; then
        echo "Group '$1' already exists!"
    else
        sudo groupadd "$1"
        echo "Group '$1' created successfully!"
    fi
}

# Function to backup directory
backup_directory() {
    if [ -d "$1" ]; then
        tar -czf "$2" "$1"
        echo "Backup of '$1' saved as '$2'"
    else
        echo "Directory '$1' does not exist!"
    fi
}

# Main script logic
case "$1" in
    add) add_user "$2" ;;
    del) del_user "$2" ;;
    mod) mod_user "$2" "$3" ;;
    grp) create_group "$2" ;;
    backup) backup_directory "$2" "$3" ;;
    *) show_help ;;
esac
