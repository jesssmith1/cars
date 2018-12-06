#! /bin/bash
#cars.sh
#Jesse Smith

quit=true
while $quit
do
	echo "You may choose from the following:  Enter 'A' to enter a new car, 'B' to list the current cars, 'Q' to quit"
	read MENU
	case $MENU in 
	"A")
		echo "enter the year of the car you would like to add"
		read YEAR
		echo "enter the make of the car you would like to add"
		read MAKE
		echo "enter the model of the car you would like to add"
		read MODEL 
		newCarName=$YEAR" "$MAKE" "$MODEL
		echo $newCarName >> "my_old_cars.txt"
		;;
	"B")
		sort -n  "my_old_cars.txt"
		;;
	"Q")	
		quit=false
		;;
	esac
done
echo "Goodbye" 
