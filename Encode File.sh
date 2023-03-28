#!/bin/bash
path=$(cat "./passwords.txt")

for line in $path
do
    echo $line | base64 >> encode.txt
done