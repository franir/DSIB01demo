#!/bin/bash
#TODO: MY GENE ALLIGNMENT AQR

BASE_URL=https://www.encodeproject.org/files

#TODO: insert names of your files
FILES=(ENCFF019WXR ENCFF166EBF ENCFF455ERC ENCFF985BEH)

mkdir data
cd data

for file in $FILES
do
	# creating url of file
	url=$BASE_URL/$file/@@download/$file.fastq.gz
	echo File URL: $url

	#downloading file
	wget $url
	
	#unzip downloaded file. zipped version is automaticaly deleted.
	gunzip $file.fastq.gz
done

echo Downloaded files:
ls
