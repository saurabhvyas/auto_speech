#!/bin/bash

urlencode() {
    # urlencode <string>
    old_lc_collate=$LC_COLLATE
    LC_COLLATE=C
    
    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            *) printf '%%%02X' "'$c" ;;
        esac
    done
    
    LC_COLLATE=$old_lc_collate
}



temp=$( urlencode "मैं पिछले महीने लंदन में था" )
echo $temp

curl -H "User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0" -H "Upgrade-Insecure-Requests:1" -H "Accept:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,/;q=0.8" -H "Accept-Encoding:gzip, deflate, br" -H "Accept-Language:en-US,en;q=0.9" -H "Connection:keep-alive" -i "http://localhost:9333/api/tts?query=%92e%948%902%20%92a%93f%91b%932%947%20%92e%939%940%928%947%20%932%902%926%928%20%92e%947%902%20%925%93e&language=hi&speed=0.24" -o result.mp3

curl -H "User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0" -H "Upgrade-Insecure-Requests:1" -H "Accept:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,/;q=0.8" -H "Accept-Encoding:gzip, deflate, br" -H "Accept-Language:en-US,en;q=0.9" -H "Connection:keep-alive" -i "http://localhost:9333/api/tts?client=tw-ob&ie=UTF-8&idx=0&tl=hi&q=%92e%948%902%20%92a%93f%91b%932%947%20%92e%939%940%928%947%20%932%902%926%928%20%92e%947%902%20%925%93e" 


