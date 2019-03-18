echo "Ganster rap"

dest=$(echo ~/Desktop/mci80-90)
echo "Destination is: $dest"
mkdir $dest
echo "Made the directory"

p=$(head -n 1 mci_80-90.txt)

location=$(echo $p | cut -d'/' -f 1-6)
echo "\nGoing to new required directory\n"

cd $location

for a in *
do
	cd $a
	echo "In dir: $a"
	for b in *
	do
		echo "In dir: $b"
		cd $b
		for c in *
		do
			echo "In dir: $c"
			cd $c
			for d in *
			do
				echo "in dir: $d"
				cd $d
				cp * $dest
				echo "copying nii file"
				break 3
			done
		done
	done
	echo "------- Next File-----------"
	cd ../../../../
	echo
	pwd
done
echo "Successfully copmleted !!"
