#!/bin/bash

echo "Initialize device..."

while IFS=, read -r col1 col2 col3 col4 col5 col6 col7
do
    
    current="$(date '+%H:%M:%S')"

    while [ "$col2" != "$current" ];
    do
        sleep 1
        echo "$col2"
        echo "Current time: $current"
        time="$(date '+%H:%M:%S')"
        current="$(date -d $time '+%H:%M:%S')"
    done


    echo "C1: $col1\t C2: $col2\t C3: $col3\t C4: $col4\t C5: $col5\t C6: $col6\t C7: $col7"
    echo '{"lat":"'"$col3"'", "log":"'"$col4"'"}'     
    #curl -H "Content-Type: application/json" -d '{"lat":"'"$col1"'", "log":"'"$col2"'"}' -X POST http://localhost:8081



done < data/data.csv
