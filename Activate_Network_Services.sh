#!/bin/bash
        echo  " init "

        echo "starting services"

sudo systemctl start NetworkManager ;
sudo airmon-ng start eth0 ;
sudo systemctl start wpa_supplicant;

        read -p "who is the adapter if you want tranfer to manager = " lan ;
 
sudo airmon-ng stop $lan  ;

        echo "ok all works"

        echo " it's done "

iwconfig;
