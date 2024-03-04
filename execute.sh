#!/bin/bash
function print_help() { # Print help and exit
    cat << EOF
Usage: $0 [FOLDER: str]
This program replaces backslashes '\\' to '/' in files with name pattern 'Makefile*' in specified FOLDER

If argument FOLDER not passed it will be requested in runtime

(c) 2024 - Anonymous
EOF
    exit 0
}


# Write help if needed
[ "$1" != "?" ] || print_help


# Ensure folder existing
[ -z "$1" ] || [ -e "$1" ] || { 
    echo "Directory does not exist";
    exit 1;
}

replace_dir=$1

while ! [ -e "$replace_dir" ] ; do
    echo "Specify directory: "
    read replace_dir
    [ -e "$replace_dir" ] || echo "Directory '$replace_dir' does not exist"
done


# Payload
temp=$IFS
IFS=$'\n'

for file in $(find $1 -name "Makefile*" -type f)
do
    sed -i 's.\\./.g' "$file"
    echo "Processed file: $file"
done

IFS=$temp
