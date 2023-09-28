#!/bin/bash

command=htop

if command -v $command
then
	echo "$command is available, let's run it..."
else
	echo "The command is not found, installing it..."
	sudo apt update && sudo apt install -y htop
fi

$command
