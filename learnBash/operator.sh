#!/bin/bash

var=27

string="Usman"
string2=""

if [ "X$string" = "X$string2" ]
then
	echo "Hello World"
fi

let "z=5**3"    # 5 * 5 * 5
echo "z = $z"

let "var += 5"
