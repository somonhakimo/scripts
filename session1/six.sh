#!/bin/bash

echo "current script name: $0"
echo "first given argument: $1"
echo "second given argument: $2"

mkdir $1
touch $1/$2
chmod 744 $1/$2

echo "process ID: $$"
echo "# of given arguments: $#"
echo "all given arguments: $@"

