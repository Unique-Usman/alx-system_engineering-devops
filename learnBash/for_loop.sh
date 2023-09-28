#!/bin/bash

for cur_numb in {1..10}
do
	echo $cur_numb
	sleep 1
done

echo "This is outside of the for loop"


for file in logfiles/*.log
do
	tar -czvf $file.tar.gz $file
done
