#!/bin/bash
echo $2 > message.txt
curl $1 -X post -H 'Content-type: application/json' --data "@message.txt"
