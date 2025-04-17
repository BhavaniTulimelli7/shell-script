#!/bin/bash

n1=$1
n2=$2

Sum=$({$n1+$n2})
Timestamp=$(date)

echo "Script exceuted at $Timestamp"
echo "Sum of $n1 and $n2 is $Sum"