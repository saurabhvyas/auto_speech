#!/bin/bash

counter=0






while read -r line; do
   #printf "%s\n" "$line"
   echo "$line" | tee data_en/"${counter}".txt
   echo "$line"
  #temp=$( python2 encode.py "$line") 
  

 # echo "$temp"


   url="http://localhost:9333/api/tts?query='${line}'&language=en"

  echo "$url"





   sudo curl -H "User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0" -H "Upgrade-Insecure-Requests:1" -H "Accept:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,/;q=0.8" -H "Accept-Encoding:gzip, deflate, br" -H "Accept-Language:en-US,en;q=0.9" -H "Connection:keep-alive" -i "${url}" -o "data_en/${counter}.mp3"

sleep 2


   let "counter++"

done < data_en2.txt
