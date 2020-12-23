#!/bin/sh

# Run 'git pull origin' on the master branch  in 1st-level subfolders

for d in ./*/ ; do 
    cd "$d";
    if git rev-parse --is-inside-work-tree; then
         git checkout master && git pull origin;
    fi
done
