#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Illegal number of parameters"
	exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"
touch "$(dirname "$writefile")"

echo $writestr > $writefile

if [ $? -ne 0 ]; then
    echo "$writefile could not be created"
    exit 1
fi
