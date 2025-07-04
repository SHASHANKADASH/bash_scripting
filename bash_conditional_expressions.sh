# Conditionals in bash
file=abc.txt
# True if file exists
[[ -e ${file} ]]

# True if File exists and is a block special file
[[ -b ${file} ]]

# True if File exists and is a character special file
[[ -c ${file} ]]

# True if file exists and it is a directory
[[ -d ${file} ]]

# True if file exists and is readable
[[ -r ${file} ]]

# True if file exists and size greater than zero
[[ -s ${file} ]]

# True if file exists and is writable
[[ -w ${file} ]]

# True if file exists and is executable
[[ -x ${file} ]]

# True if a variable value is set
[[ -v file ]]

# True if length of string is zero
[[ -z ${string} ]]

# True if length of string is non zero
[[ -n ${string} ]]

# True if string values are equal 
[[ ${string1} == ${string2} ]]
# True if string are not equal
[[ ${string1} == ${string2} ]]

# If string 1 sorts before string 2
[[ ${string1} < ${string2} ]]
# after
[[ ${string1} > ${string2} ]]

# Number Comparison
[[ ${arg1} -flag ${arg2} ]]
# flag : eq , ne, gt, ge, lt, le -> equal, not equal, greater than, greater than or equal, less than, less than or equal

# AND OR
[[ test_case_1 ]] && [[ test_case_2 ]] # And
[[ test_case_1 ]] || [[ test_case_2 ]] # Or

# To check if the command succeeded without any errors
[[ $? -eq 0 ]]
# Return true if command failed or had errors
[[ $? -gt 0 ]]
