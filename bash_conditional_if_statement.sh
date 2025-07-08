#!/bin/bash

# if syntax

# 1.
# if [[ condition ]]
# then
# <commands>
# fi

# 2.
# if [[ condition ]]
# then
# <commands>
# elif [[ condtion ]]
# then
# <commands>
# else
# <commands>
# fi

read -p "Enter a number to check odd/even" number
if ((number % 2 == 0)); then
  echo "Even number"
else
  echo "Odd number"
fi

# Another example
read -p "Please enter your role " role
if [[ ${role} == "admin" ]]; then
  echo "Access is allowed"
elif ((EUID == 0)); then
  echo "You are not an admin user but you have root access"
else
  echo "Access is denied. Get lost"
fi
