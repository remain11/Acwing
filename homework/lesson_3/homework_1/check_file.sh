#! /bin/bash

dir=~/homework/lesson_3/homework_1

if [ $# -ne 1 ] 
then
    echo "arguments not valid"
    exit 1
fi


if [ ! -e "$1" ] 
then
    echo "not exist"
    exit 2
else
    if [ -f "$1" ]
    then
        echo "regular file"
    fi
    if [ -d "$1" ]
    then
        echo "directory"
    fi
    if [ -r "$1" ]
    then
        echo "readable"
    fi
    if [ -w "$1" ]
    then
        echo "writable"
    fi
    if [ -x "$1" ]
    then
        echo "executable"
    fi
    exit 0
fi

