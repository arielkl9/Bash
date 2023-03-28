#!/bin/bash

pass="03f21b939e022176e87feb7704477bbc"

paraphrase="WS4eCh8zGcwWCv4hgTY5HvaTJQjv/jDCGQ/UP6BkjIToutXPIgRT+C66yuevVHz/hVpqMVUAnMerHdizUsRpd/n4C2S0EhFu9341P8pOWiY="

userpass=0
md5Hash=$(md5Hash=$(echo $userpass | md5sum | awk '{print $1}'))

while ! [ $md5Hash == $pass ]
do
	userpass=$(($userpass + 1))
	md5Hash=$(echo $userpass | md5sum | awk '{print $1}')
	echo $userpass "-" $md5Hash
done
echo "the pass is: " $userpass
