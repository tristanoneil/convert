#!/bin/bash

# repeat until user chooses the exit flag of 3.

while [ "$choice" != 3 ]
do
  # print welcome menu and choices then read users selection.
  echo "Welcome to the best speed conversion utility ever"
  echo "Press 1 to convert from MPH to km/h"
  echo "Press 2 to convert from km/h to MPH"
  echo "Press 3 to exit"
  read choice

  # checks users choice
  if [ $choice = 1 ]
    then
      echo "Please enter a speed in MPH"

      # reads speed from user
      read speed

      # pipes speed variable and conversion factor to bc for precision handling.
      conversion=`echo "1.609344*$speed" | bc`

      # prints converted speed on screen.
      echo "Your speed in km/h is: $conversion"

    # checks users choice
    elif [ $choice = 2 ]
      then
        echo "Please enter a speed in km/h"

        # reads speed from user
        read speed

        # pipes speed variable and conversion factor to bc for precision handling.
        conversion=`echo "0.621371192*$speed" | bc`

        #prints converted speed on screen.
        echo "Your speed in MPH is: $conversion"
  fi
done
