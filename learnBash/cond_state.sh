#!/bin/bash

mynum=300

if [ $mynum -gt 200 ]
then
	echo "The condition is true"
else
	echo "Not eq 200"
fi


if [ -f myfile ]
then
	echo "The file exist"
else
	echo "The file does not exist"
fi
