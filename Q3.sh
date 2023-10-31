
#!/bin/bash

# Check if the script is run as root (optional)
if [ "$(id -u)" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

# Check if a UID is provided as an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <UID>"
  exit 1
fi

uid="$1"

# Use the who command to list all logged-in users and filter by the specified UID
logged_in_users=$(who | awk -v uid="$uid" '$1 == uid {print $0}')

# Count the number of times the user is logged in
num_logins=$(echo "$logged_in_users" | wc -l)

# Print the result
if [ "$num_logins" -eq 0 ]; then
  echo "User with UID $uid is not currently logged in."
else
  echo "User with UID $uid is logged in $num_logins times:"
  echo "$logged_in_users"
fi
