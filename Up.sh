#!/bin/bash

INT="2"

while true
do
sleep $INT
echo $(uptime | awk -F, '{sub(" .*up ",x,$1);print $1}') > up.html
done
