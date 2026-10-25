#!/bin/bash
# Step 1: Update packages and install OpenSSH Server and Net-Tools
sudo apt update
sudo apt install -y openssh-server net-tools

# Step 2: Check IP address of the Virtual Machine (e.g., 10.0.2.15)
ifconfig

# Step 3: Create transfer.txt file
touch transfer.txt
echo "Cloud Computing Experiment 5 - SCP File Transfer Test" > transfer.txt
cat transfer.txt

# Step 4: Transfer file to second VM / host using SCP
# Replace <username> and <target_ip> with the target VM's details
scp transfer.txt <username>@<target_ip>:/home/<username>/

# Step 5: Verify SSH service status
sudo systemctl status ssh
