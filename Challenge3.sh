#!/bin/bash


# define variable and allow user input

file_checker() {
    local file_name 
echo "Enter filename to check " 
read file_name

#checks if that file exists, if not ends script there

if [ -f "$file_name" ]; then
    echo "$file_name exists " 
    else 
        echo "$file_name does not exist "
        exit 1 
fi 

# Checks readability
if [ -r "$file_name" ]; then
        echo "✓ file is readable " 
    else
        echo "✗ File is not readable"
fi 

#Checks writability
if [ -w "$file_name" ]; then
        echo "✓ file is writable " 
    else
        echo "✗ File is not writable"
fi 

#Checks excecutability
if [ -x "$file_name" ]; then
        echo "✓ file is excecutable " 
    else
        echo "✗ File is not excecutable"
fi 

}

file_checker 