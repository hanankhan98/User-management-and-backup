## User Management and Backup Script Overview

This project is a Linux shell script that automates user management and backup tasks.
It was developed for DevOps learning project to improve efficiency in system administration, ensure secure backups, and practice version control with Git/GitHub.

The script provides:
User account management (add, delete, modify users).
Group management.
Directory backup with compression.
A clean, user-friendly command-line interface.

## Features

Add Users – Create new users with a home directory.
Delete Users – Remove existing users (with home directory).
Modify Users – Change user shell or details.
Group Management – Create new groups.
Backup Directories – Compress & archive specified directories.
Includes error handling & validation for better reliability.

## Tools & Requirements

Linux (Ubuntu, Fedora, or any distribution).
Bash Shell.
Git (for version control).
Text Editor (Vim, Nano).

## Installation & Setup

Clone the repository:
git clone https://github.com/hanankhan98/User-management-and-backup.git
cd User-management-and-backup

Make the script executable:
chmod +x user_mgmt_backup.sh

## Usage

Run the script with one of the available commands:

./user_mgmt_backup.sh

Example Runs
./user_mgmt_backup.sh add hanan
#User 'hanan' added successfully!

./user_mgmt_backup.sh grp devops
#Group 'devops' created successfully!

./user_mgmt_backup.sh backup /etc etc_backup.tar.gz
#Backup of '/etc' saved as 'etc_backup.tar.gz'

## Project Structure
User-management-and-backup/

│── user_mgmt_backup.sh   # Main script

│── README.md             # Documentation

Security Notes

Script requires sudo/root privileges for user and group management.
Always review before executing in production environments.
Backups are stored in the current directory unless you provide a path.
