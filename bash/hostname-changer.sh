#!/bin/bash
#
# This script is for the bash lab on variables, dynamic data, and user input
# Download the script, do the tasks described in the comments
# Test your script, run it on the production server, screenshot that
# Send your script to your github repo, and submit the URL with screenshot on Blackboard
echo "Use this script as a root. (recommanded)"
# Get the current hostname using the hostname command and save it in a variable
hostN=$(hostname)
# Tell the user what the current hostname is in a human friendly way
echo "Hello user. Your current hostname is $hostN"
# Ask for the user's student number using the read command
read -p "Enter your student number: " studentnumber
# Use that to save the desired hostname of pcNNNNNNNNNN in a variable, where NNNNNNNNN is the student number entered by the user
str1=pc
desiredh=$str1$studentnumber
# If that hostname is not already in the /etc/hosts file, 
hostNN=$(hostname)
#change the old hostname in that file to the new name using sed or something similar and
#     tell the user you did that
#e.g. sed -i "s/$oldname/$newname/" /etc/hosts
if [[ $hostN2 != $desiredh ]];
then
  sed -i "s/$hostNN/$desiredh/" /etc/hosts
fi
hostNNN=$(hostname)
# If that hostname is not the current hostname, 
if [[ $hostNNN != $desiredh ]];
then
  hostnamectl set-hostname $desiredh
  #change it using the hostnamectl command and
  #     tell the user you changed the current hostname
  echo "Hostname changed from old one $hostNNN to the new one $desiredh"
fi
#and they should reboot to make sure the new name takes full effect
echo "Use sudo init 6 command to reboot the system which will be in full effect"
