#!/bin/bash
mydir="firstddir"
myfirstfile="firstfile"

if [ -d "$mydir" ]; then
    echo "Directory exists"

    if [ -f "$mydir/$myfirstfile" ]; then
        echo "File '$myfirstfile' exists inside '$mydir'"
    else
        echo "File '$myfirstfile' does not exist inside '$mydir'"
        echo "Creating file..."
        touch "$mydir/$myfirstfile"
    fi

else
    echo "Directory does not exist"
    echo "Creating directory..."
    mkdir "$mydir"
    echo "Creating file inside the directory..."
    touch "$mydir/$myfirstfile"
fi

