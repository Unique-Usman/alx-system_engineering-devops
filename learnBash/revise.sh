#!/usr/bin/env bash

i=0

until [ $i -eq 10 ]
do
	echo "Hello world";
	: $[ i++ ]
done
