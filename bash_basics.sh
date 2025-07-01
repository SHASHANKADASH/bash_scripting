#!/bin/bash
# The above line is called shebang
echo "Hello World!"

# Defining variables in bash
name="Shashanka"
echo "My name is $name" # or echo ${name}
# name = "shashanka" is incorrect as we cannot have space between = and string

# We can also take input from terminal. The input can be reffered in the script using $1 $2 and so on
echo "Input in order $1 $2"

# We can also read everything together using $@
echo "Reading everything together $@"

# Reading Input from the user
echo "please enter your age"
read age
echo "user's age is $age"

# The above code can be reduced by adding a prompt to the read command
read -p "please enter your age " age
echo "user's age is $age"

# $0 has a special usage. It refers to the file itself
echo "The name of the file is $0"
# It can also be used to remove the file inside the script using rm -f $0
