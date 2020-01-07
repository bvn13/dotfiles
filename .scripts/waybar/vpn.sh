#!/bin/bash

vpn=$(nmcli -c no -t -f name,type,state c | grep vpn | grep activated | awk -F ":" '{ print $1 }')

#echo $vpn

if [[ -z "$vpn" ]]; then
    echo "{\"text\":\"no\"}"
else
    echo "{\"text\":\"$vpn\"}"
fi
