#!/bin/bash

path=$(cat "./passwords.txt")

for line in $path
do
    echo $line | md5sum | awk '{print $1}' >> hash.txt
done