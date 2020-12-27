#!/bin/bash

# Run 'git pull origin' on the master branch  in 1st-level subfolders

for d in $1/*/ ; do 
    cd "$d";
    echo -e "\n${PWD}";
    if git rev-parse --is-inside-work-tree; then
         git checkout master && git pull origin;
    fi
    cd ..;
done
