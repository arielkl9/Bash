#!/bin/bash

check="f9c737a5589d5a6655e5d06e6897254e"
idGroup1=0
idGroup2=0
idGroup3=0
id=$(echo "$idGroup1-$idGroup2-$idGroup3")
idMd5=$(echo $id | md5sum | awk '{print $1}')

while ! [ $check == $idMd5 ]
do
	idGroup1=$(($idGroup1 + 1))
	if [ $idGroup1 == 999 ] && [ $idGroup2 == 999 ]
	then
		idGroup1=0
		idGroup2=0
		idGroup3=$((idGroup3 + 1))
		
	elif [ $idGroup1 == 999 ]
	then
		idGroup1=0
		idGroup2=$(($idGroup2 + 1))
	fi
	id=$(echo "$idGroup1-$idGroup2-$idGroup3")
	idMd5=$(echo $id | md5sum | awk '{print $1}')
	echo $id
done

echo "the id is:" $id