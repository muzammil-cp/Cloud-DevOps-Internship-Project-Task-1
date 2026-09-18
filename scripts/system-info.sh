#!/bin/bash

echo "================================="
echo " Cloud DevOps System Information"
echo "================================="

echo
echo "Hostname:"
hostname

echo
echo "User:"
whoami

echo
echo "Kernel:"
uname -r

echo
echo "Ubuntu Version:"
lsb_release -ds

echo
echo "IP Address:"
hostname -I

echo
echo "Disk Usage:"
df -h /

echo
echo "Memory:"
free -h

echo
echo "Git Version:"
git --version
