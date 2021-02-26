#!/bin/bash


stats(){
    
    echo -e "\nPlease enter a target IP address"
    read -r target
    
    echo -e "\nScan open or closed ports?"
    read -r ports

    if [ "$ports" == "closed" ]; then
        nc -z -v "$target" 1-1023 2>&1 | grep refused
    fi
    if [ "$ports" == "open" ]; then
        nc -z -v "$target" 1-1023 2>&1 | grep succeeded
    else
        nc -z -v "$target" 1-1023 2>&1
    fi

    exit
}

stats