#!/bin/bash
	echo  " init "

	echo "stopping services"

sudo airmon-ng check kill
sudo systemctl stop NetworkManager ;
sudo airmon-ng stop eth0 ;
sudo systemctl stop wpa_supplicant;

	read -p "manager<monitor = "  lan ;
 
sudo airmon-ng start "$lan";

	echo "ok all works"

	echo " it's done, you dont have wifi, if you have wifi just restart the file or solve the fix "

iwconfig;

