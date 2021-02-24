#!/bin/bash

#declare globals
file="out.txt"
ps=$(ps aux)

#ask if you want to kill something
display_procs() {
    echo -e "\nDo you want manage running processes? y/n?: "
    read -r option
    while :
    do
        if [ "$option" == n ]; then
            echo -e "\nBYEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"
            break
        else 
            manage_procs
        fi
    done
}

#kill and return
manage_procs() {
   
    if [ "$option" == y ]; then
        echo -e "$ps"
        echo -e "\nFor reference, I've put the list of running process in $file"
        echo - e "$ps" >> "$file"
        echo -e "\nPlease enter the PID you want to kill\n"
        read -r PID
        kill -9 "$PID"
        
        display_procs
    fi
}

display_procs