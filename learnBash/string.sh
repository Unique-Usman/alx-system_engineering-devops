#!/bin/bash

a="zebra"

# Double brackets with pattern matching
if [[ $a == z* ]]; then
  echo "Pattern matching: \$a starts with 'z'"
else
  echo "Pattern matching: \$a does not start with 'z'"
fi

# Double brackets with literal matching
if [[ $a == "z*" ]]; then
  echo "Literal matching: \$a is equal to 'z*'"
else
  echo "Literal matching: \$a is not equal to 'z*'"
fi
