#! /bin/bash
# cars.sh
# Ian Hakeman
echo "Type the number 1 to enter a new car"
echo "Type the number 2 to display the list of cars"
echo "Type the number 3 to quit and exit the program"
read -r NUMBERINPUT
while [ "$NUMBERINPUT" -ne 3 ]
do
	if echo "$NUMBERINPUT" | grep -Ev "^[1-3]{1}$" > /dev/null 2>&1
	then
		echo "You must enter a number between 1 and 3"
		read -r NUMBERINPUT
	else
		case $NUMBERINPUT in
			1 )
				echo "Please enter the year of the Car:"
				read -r YEAR
				while echo "$YEAR" | grep -Ev "^[0-9]{4}$" > /dev/null 2>&1
				do
					echo "You must enter a 4 digit year"
					read -r YEAR
				done
				echo "Please enter the make of the car:"
				read -r MAKE
				echo "Please enter the model of the car:"
				read -r MODEL
				echo "$YEAR:$MAKE:$MODEL" >> My_old_cars;;
			2 )
				sort My_old_cars;;
		esac
		echo "type the number 1 to enter a new car"
		echo "type the number 2 to display the list of cars"
		echo "type the number 3 to quit and exit the program"
		read -r NUMBERINPUT
	fi
done
echo "Goodbye"
