#!/bin/bash

path="./passwords.txt"
openssl aes-256-cbc -in $path -out encrypt.enc -k 1234