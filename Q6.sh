#!/bin/bash

# Define the target IP address range
target_ip="192.168.1.0/24"

# Run nmap to scan the target IP range
nmap -sn $target_ip
