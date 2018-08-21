#!/bin/bash


pros=$(ps -e -o pid --sort -size | head -n 11 | grep [0-9])

for pid in $pros
do
	echo $pid ' - ' $(ps -p $pid -o comm=)
done
