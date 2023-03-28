#!/bin/bash

tmpPath="/tmp/files"
mkdir $tmpPath 2>/dev/null

while true
do
    read -p "path: " path
    ls $path 1>/dev/null 2>/dev/null
    if [ "$?" -eq 2 ]
    then
        echo "wrong path..."
    else
        biggestFile=$(ls -S $path | head -n1)
        cp -r $path/$biggestFile $tmpPath/
        echo "$path$biggestFile -> $tmpPath/"
    fi
  
    read -p "again? " ans
    if [ "$ans" == "no" ]
    then
        break
    else
        echo "continue..."
    fi
done

cd $tmpPath/
tar -cf Backup.tar ./*
echo "tar Backup.tar"
echo "bye"