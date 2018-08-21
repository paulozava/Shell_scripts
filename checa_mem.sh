#/bin/bash

mem_total=$(free | grep -i mem | awk '{ print $2 }')
mem_usada=$(free | grep -i mem | awk '{ print $3 }')
perc=$(bc <<< "scale=2;1511/8787 *100" | awk -F. '{ print $1 }')
