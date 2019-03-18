echo "let's get started"
for i in */
do
	cd $i
	k=0
	for j in *.nii
	do
		k=$(($k+1))
		zip file$k $j 
		echo "Zipped file$k"
	done
	echo $j
	cd ..
done
