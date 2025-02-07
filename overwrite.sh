#!/bin/bash
mydir="firstddir"
myfirstfile="firstfile"

if [ -d "$mydir" ]; then
    echo "Directory '$mydir' exists."
    read -p "Do you want to overwrite it? (y/n): " choice
    if [ "$choice" == "y" ] || [ "$choice" == "Y" ]; then
        echo "Removing the existing directory..."
        rm -rf "$mydir"
        echo "Creating new directory..."
        mkdir "$mydir"
        echo "Creating file inside the directory..."
        touch "$mydir/$myfirstfile"
    else
        echo "Directory not overwritten. Exiting..."
        exit 1
    fi

else
    echo "Directory does not exist."
    echo "Creating directory..."
    mkdir "$mydir"
    echo "Creating file inside the directory..."
    touch "$mydir/$myfirstfile"
fi
