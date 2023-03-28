#!/bin/bash
id="f9c737a5589d5a6655e5d06e6897254e"
lol="here is the super mega extra secret password: 1337"
age=$1
userId=$2
#read -p "tell me your age: " age
if [ $age -lt 18 ] 2>/dev/null
then
	echo "you too young for that shit"
elif [ $age -ge 18 ] 2>/dev/null && [ $age -le 21 ] 2>/dev/null
then
	#read -p "insert a valid id: " userId
	userIdMd5=$(echo $userId | md5sum | awk '{print $1}')
	if [ $userIdMd5 == $id ]
	then
		echo "$lol"
	else
		echo "sike thats the wrong number"
	fi
elif [ $age -gt 21 ] 2>/dev/null
then
	echo "you too old for this"
else
	echo "error check your input; ("
fi