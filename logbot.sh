#!/bin/bash

TOKEN="YOUR TOKEN"
ID="YOUR CHAT_ID"
URL="https://api.telegram.org/bot${TOKEN}/sendMessage"

sudo tail --follow=name --retry "/var/log/auth.log" | fgrep -ai "accepted password" --line-buffered |
while read -r line; 
do 
    ip=$(echo "$line" | awk '{print $11}')
    date=$(echo "$line" | awk '{print $3}')
    hostname=$(echo "$line" | awk '{print $4}')
    user=$(echo "$line" | awk '{print $9}')

    message="""
New login for "${user}"
System accessed from "${ip}"
Access hour -> "${date}"
Hostname -> "${hostname}"
    """

    curl -s -X POST $URL -d chat_id=$ID -d text="$message" > /dev/null
done;
