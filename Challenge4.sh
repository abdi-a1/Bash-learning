#!/bin/bash

backup_txt() {
    local dir_path
    read -p "Enter source directory:" $dir_path

if [ ! -d "$dir_ path"  ]; then
    echo "Error: directory - $dir_path not found"
    return 1 
fi   

    local timestamp=$(date +%y-%m-%_%H-%m)
    local backup="backup_${timestamp}"
    

    mkdir -p  "$backup"
    
    echo "backup directory created: $backup" 
    echo "copying .txt files..."
    cp "$dir_path"/*.txt "$backup"

    local file_count=$(find "$backup" -type f | wc -l)
    echo "Backup complete! files backed up: $file_count "

}

backup_txt