#!/bin/bash

# Declare a constant variable representing the progress bar's full size.
declare -r BAR_SIZE="##########"
# Determine the maximum size of the progress bar (i.e., the total number of '#' characters).
declare -r MAX_BAR_SIZE=${#BAR_SIZE}

# Get the range from the first command-line argument
range=$1

# Loop from 1 to the specified range
for i in $(seq 1 $range); do

  # Calculate the percentage of completion
  perc=$(((i * 100) / $range))
  # Calculate how many '#' characters should be displayed in the progress bar
  percBar=$((perc * MAX_BAR_SIZE / 100))

  # Simulate a command with a delay of 1 second
  sleep 1

  # Display the progress bar, updating it on the same line using '\r'
  echo -ne "\\r[${BAR_SIZE:0:percBar}] $perc %"

done

# Move to the next line after the progress bar is complete
echo -e "\r"

# Exit the script with a status code of 0 (indicating success)
exit 0
