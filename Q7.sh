#!/bin/bash
#dependancies include ssmtp
# Read the recipient list from a file
while IFS=, read -r name email
do
   # Create the message 
   message="To: $email
Subject: 3rd Year Projects Webinar Invitation 

Dear $name,

Inviting you as our computing student to our 3rd Year Projects on innovation incubation scheduled for Monday, 23rd October from 10:00 A.M.

The Zoom link for joining on Friday is as given below:
zoom_link

We shall also broadcast the webinar on our YouTube channel.
YouTube link: https://youtu.be/ONVTA7LKMIs
"

   # Send the email using ssmtp
   echo -e "$message" | ssmtp "$email"
done < students.txt