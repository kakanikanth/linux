#!/bin/bash

# Get system information
echo "System Information:"
uname -a

# Get CPU details
echo -e "\nCPU Details:"
lscpu

# Get Memory details
echo -e "\nMemory Details:"
free -h

# Get Disk details
echo -e "\nDisk Details:"
lsblk

# Get detailed hard drive info (including model)
echo -e "\nHard Drive Details:"
sudo hdparm -I /dev/sda

# Get GPU information
echo -e "\nGPU Information:"
lspci | grep VGA

# Get Network interface details
echo -e "\nNetwork Interfaces:"
ip a

# Get USB devices
echo -e "\nUSB Devices:"
lsusb

# Get Motherboard information
echo -e "\nMotherboard Information:"
sudo dmidecode -t baseboard

# Get System Model and Manufacturer
echo -e "\nSystem Model and Manufacturer:"
sudo dmidecode -t system
