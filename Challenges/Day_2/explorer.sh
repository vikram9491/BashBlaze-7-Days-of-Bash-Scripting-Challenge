#!/bin/bash

# Part 1: File and Directory Exploration
<<<<<<< HEAD
echo "Welcome to the Interactive File and Directory Explorer!"

while true; do
    # List all files and directories in the current path
    echo "Files and Directories in the Current Path:"
    ls -lh

    # Part 2: Character Counting
    read -p "Enter a line of text (Press Enter without text to exit): " input

    # Exit if the user enters an empty string
    if [ -z "$input" ]; then
        echo "Exiting the Interactive Explorer. Goodbye!"
        break
    fi

    # Calculate and print the character count for the input line
    char_count=$(echo -n "$input" | wc -m)
    echo "Character Count: $char_count"
=======

# AUTHOR : SONAL SINGH

# Welcome message
echo "Welcome to the Explorer!"
echo "This script will list all files and directories in the current path."
echo "-----------------------------------------------------------------------"
# List files and directories
echo "Files and Directories in the current path:"
ls

# Welcome message
echo "Welcome to the Explorer!"
echo "This script will list all files and directories in the current path with their sizes."
echo "------------------------------------------------------------------------------------------"
# List files and directories with human-readable sizes
echo "Files and Directories in the current path with their sizes:"
ls -lh

# The list of files and directories will be displayed in a loop until the user decides to exit the explorer.
while true; do
    echo "Enter the directory path (or 'exit' to quit):"
    read directory

    if [ "$directory" = "exit" ]; then
        echo "Exiting the explorer."
        break
    fi

    if [ ! -d "$directory" ]; then
        echo "Error: Not a valid directory path. Please try again."
        continue
    fi

    echo "Files and directories in $directory:"
    echo "---------------------------------"

    ls -lh "$directory"

    echo "---------------------------------"
done

# Part 2: Character Counting

echo "Enter text (press Enter on an empty line to exit):"

while true; do
    read line

    if [ -z "$line" ]; then
        echo "Exiting the character counter."
        break
    fi

    character_count=${#line}
    echo "Number of characters in the line: $character_count"
>>>>>>> f9f2ba66ca57ca4c688df3243a7769502c051859
done
