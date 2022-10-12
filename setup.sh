#!/bin/bash

APIKEY="none"
Help()
{
   # Display Help
   echo "################################################################"
   echo 
   echo "Initial setup of directory."
   echo "Requires npm, npx, and a Honeycomb API Key"
   echo
   echo "Syntax: setup.sh [-h|-a]"
   echo "options:"
   echo "a     Honeycomb API Key"
   echo "h     Print this Help."
   echo
   echo "################################################################"
}

# Set variables

while getopts ":ha:" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      a) # Enter a name
         APIKEY=$OPTARG;;
      \?) # Invalid option
        echo "Error: Invalid option"
        exit;;
   esac
done
if [ "$APIKEY" == "none" ]; then
    echo
    echo "Error: Please enter your Honeycomb API Key with the -a option!"
    echo 
    Help
    exit 2
else
    npm install
    FILE=.env.development
    if test -f "$FILE"; then
        echo
        echo "Warning: File .env.development already exists and is being written over!"
        echo 
    fi
    echo "API_KEY=$APIKEY" > .env.development
    echo "API_URL=https://api.honeycomb.io/v1/traces" >> .env.development
fi

