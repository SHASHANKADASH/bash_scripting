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

# Arrays are defined in bash in below format
list=("1" "2" "3")
# To access the array elements
echo ${list[1]}
# To print all the elements
echo ${list[@]}
# To get the size of the array
echo ${#list[@]}

# Printing a range of elements
array=(1 2 3 4 5)
# Print from index 1 to 3
echo ${array[@]:1:3}
# Print from index 3
echo ${array[@]:3}

# In the same way we can slice string as well
# Syntax : ${string:start:length}
# Thing to note here is the last param denotes max chars to extract not the ending index unlike python. If we give a number greater than the
# length of the string, it won't give an error. It will print the number of charcters possible to print from the string
str="abcdefgh"
# Extract from index 0, maximum 4 characters
echo ${str:0:4}
# Extract from index 0 to the end
echo ${str:0}
