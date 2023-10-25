#!/usr/bin/env bash

echo "What files do you want to commit ? "
read file

$( git add $file)
