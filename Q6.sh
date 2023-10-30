#!/bin/bash

# Define the target IP range
ip_range="192.168.1.0/24"

# Run nmap to scan the target IP range
nmap -sn $ip_range
