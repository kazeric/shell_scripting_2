#!/bin/bash

# Define subject, from email, and Zoom link as variables
subject="3rd Year Projects Webinar Invitation"
from_email="your_email@example.com"
zoom_link="your_zoom_link"
recipient_email="kahindie873@gmail.com"  # Replace with your recipient's email

# Read the recipient list from a CSV file (recipient_list.csv)
while IFS=, read -r name email
do
   # Create the message by replacing placeholders
   message="To: $email
From: $from_email
Subject: $subject

Dear $name,

Inviting you as our computing student to our 3rd Year Projects on innovation incubation scheduled for Monday, 23rd October from 10:00 A.M.

The Zoom link for joining on Friday is as given below:
$zoom_link

We shall also broadcast the webinar on our YouTube channel.
YouTube link: https://youtu.be/ONVTA7LKMIs
"

   # Send the email using ssmtp
   echo -e "$message" | ssmtp "$email"
done < students.txt