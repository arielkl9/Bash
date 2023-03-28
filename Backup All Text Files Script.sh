#!/bin/bash
mkdir ~/backups 2>/dev/null # --> create the backup folder
for textFile in $(find ~ -type f) # --> for all textFile find all the files type file #for every iteration textFile equel to the $(find ~ -type f) next result 
do	
	type=$(file $textFile) # --> svae the file filetype in the type variable	
	fileType=$(echo $type | awk '{print $2 $3}') # --> get only the 2 and 3 columns	
	if [ "$fileType" == "ASCIItext" ] # --> check if the file type is ascii	then		
		cp $textFile ~/backups 2>/dev/null # --> cope the text file to backup	
	fi
done
cd ~/backups/ #
tar cf backup.tar ./* # go to the backup folder and zip(tar) all the files