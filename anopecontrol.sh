#!/usr/bin/env bash

# Anope-Panel provision script, written by Som
set -e
set -u

_author="Som / somsubhra1 [at] xshellz.com"
_package="Anope-Panel"
_version="1.1"

echo "Running provision for package $_package version: $_version by $_author"

dir="services"
cd ~

#checks for services directory
if [ ! -d $dir ]
then
 echo "Anope Services Directory doesn't exist in $HOME. Please install Anope first"
 exit
fi

cd $dir

#help
if [ $input == "help" ]
then
 echo "start - Start Anope Services"
 echo "stop - Stop Anope Services"
 echo "status - Show Anope Services Status"
 echo "restart - Restarts anope services. Databases will be saved"
 echo "rehash - Rehashes Anope configuration file and saves databases"
 echo "version - Shows Anope version and build information"
 echo "help - Shows this help"
 echo "Please note all the operations are CASE SENSITIVE"

#start
elif [ $input == "start" ]
then
 ./anoperc start
 
#stop
elif [ $input == "stop" ]
then
 ./anoperc stop

#status
elif [ $input == "status" ]
then
 ./anoperc status

#restart
elif [ $input == "restart" ]
then
 ./anoperc restart

#rehash
elif [ $input == "rehash" ]
then
 ./anoperc rehash

#version
elif [ $input == "version" ]
then
 ./anoperc version

#default
else
 echo "$input is an unknown operation"

fi

echo "Provision done, successfully."
