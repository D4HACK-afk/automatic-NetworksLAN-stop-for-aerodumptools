#!/bin/bash
	echo  " init "

	echo "stopping services"

sudo systemctl stop NetworkManager ;
sudo airmon-ng stop eth0 ;
sudo systemctl stop wpa_supplicant;

	read -p "who is the adapter if you want transfer to monitor mode = "  lan ;
 
sudo airmon-ng start $lan  ;

	echo "ok all works"

sudo airmon-ng check kill

	echo " it's done, you dont have wifi, if you have wifi just restart the file or solve the fix "

iwconfig;

