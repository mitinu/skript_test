#!/bin/bash
factorial=$1
one=1

#echo "$factorial"

if [ "$factorial" -ne "$one" ]; then
    #echo "true"
    factorial_next=$((factorial - one))
    #echo "$factorial_next"
    bash /home/administrator/Desktop/bash/test_factorial.sh "$factorial_next"
    number=$(cat /home/administrator/Desktop/bash/number_factorial)
    #echo "$number"
    number=$((number * factorial))
    echo "$number" > /home/administrator/Desktop/bash/number_factorial
else
    #echo "false"
    echo "$one" > /home/administrator/Desktop/bash/number_factorial
fi
