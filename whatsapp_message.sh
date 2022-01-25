#!/bin/bash
# Accept the phone number of the receiver from user
read -p "Enter the phone number of receiver in international format: " phoneNumber
# Read the command required to execute from the user
read -p "Enter the command you want to execute: " rhelCommand
# Executing the command and storing command output in the variable
message="`$rhelCommand`"
# Replacing space, + sign with %20
messages=`echo $message | sed 's/ /%20/g' | sed 's/+/%20/g'`
# Creating the link with phone number and command line output
link="https://web.whatsapp.com/send?phone=$phoneNumber&text=$messages"
echo $link
