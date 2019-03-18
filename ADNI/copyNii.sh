echo "Sup fellas"
mkdir mci_80-90_zip
i=0
while IFS="" read -r p || [ -n "$p" ]
do
	i=$(($i+1))
	cp $p ~/Desktop/mci_80-90_zip
	echo "copying $i"	
done < ~/Desktop/mci_80-90.txt
echo "Done successfully\n\n"
