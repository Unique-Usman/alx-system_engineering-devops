#!/bin/bash
# Counting to 11 in 10 different ways.

n=1; echo -n "$n "


let "n++"          # let "++n"  also works.
echo -n "$n "

(( n++ ))          # (( ++n ))  also works.
echo -n "$n "

: $(( n++ ))      # : $(( ++n )) also works.
echo $a
echo -n "$n "

: $[ n++ ]         # : $[ ++n ] also works
echo -n "$n "
