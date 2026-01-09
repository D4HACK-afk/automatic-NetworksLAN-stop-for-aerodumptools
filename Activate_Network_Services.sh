#!/bin/bash
        echo  " init "

        echo "starting services"

sudo systemctl start NetworkManager ;
sudo systemctl start wpa_supplicant;

        read -p "monitor<manager = " lan ;
 
sudo airmon-ng stop "$lan"  ;

        echo "ok all works"

        echo " it's done "

iwconfig;
