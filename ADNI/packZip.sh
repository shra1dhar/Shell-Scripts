echo "Sup fellas !!"
mkdir ~/Desktop/mci60-70_zip
i=1
while IFS="" read -r p || [ -n "$p" ]
do
	i=$(($i+1))
	name="file$i.zip"
	echo "Name is $name"
	printf '%s\n' "-------------> $p <----------------"
	echo
	location=$(echo $p | cut -d'/' -f 1-10)
	echo $location
	fileToZip=$(echo $p | rev | cut -d '/' -f 1 | rev)	
	zip $name $fileToZip
	cd $location
       	mv *.zip ~/Desktop/mci60-70_zip	
done < ~/Desktop/mci_60-70.txt
echo "\nEOF"
