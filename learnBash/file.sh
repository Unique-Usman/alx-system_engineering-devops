#!/bin/bash

if [ -e logfiles ]
then
	echo "The file is present"
	if [ -s logfiles ]
	then
		echo "The file has content"
	fi
fi
