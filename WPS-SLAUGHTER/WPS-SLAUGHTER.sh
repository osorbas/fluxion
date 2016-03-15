#!/bin/bash

##################################### < DEBUG > #########################################
WPSXSLAUGHTER_DEBUG=0
##################################### < CONFIGURATION > ##################################

#version
version=1 
revison=1
#Create a dump path 
DUMP_PATH="/tmp/TMPWPSXSLAUGHTER"       
#Colores
white="\033[1;37m"
grey="\033[0;37m"
red2="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
transparent="\e[0m"

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

# I prefer to use a external airmon script because you can also use older airmon-ng versions and it isn't a big deal 
# A debug mode is also great, because you can see the error massages and hide them 
if [ $WPSXSLAUGHTER_DEBUG = 1 ]; then
	## Developer Mode
	export wpsxslaughter_output_device=/dev/stdout
	HOLD="-hold"
else
	## Normal Mode
	export wpsxslaughter_output_device=/dev/null
	HOLD=""
fi

# Delete Log only in Normal Mode !
function conditional_clear() {
	
	if [[ "$wpsxslaughter_output_device" != "/dev/stdout" ]]; then clear; fi
}

function airmon {
	sudo chmod +x airmon 
}
airmon

# To check the latest updates is also great, please note i use a google server 
# It is in my optinion the eaysiest way
# Simple create a site 

function checkupdatess {
	
	revision_online="$(timeout -s SIGTERM 20 curl -L "https://sites.google.com/site/wpsslaughter/wpsslaughter" 2>/dev/null| grep "^revision" | cut -d "=" -f2)"
	if [ -z "$revision_online" ]; then
		echo "?">$DUMP_PATH/Irev
	else
		echo "$revision_online">$DUMP_PATH/Irev
	fi
	
}


############################################# < CONFIGURATION END > #############################################


# A exit fucntion is great because all processes where killed 
# So I think you should must add this in your script 


function exit1 {
	
	echo -e "\n\n"$white"["$red"-"$white"] "$red"Cleaning and closing"$transparent""
	
	if ps -A | grep -q aireplay-ng; then
		echo -e ""$white"["$red"-"$white"] "$white"Kill "$grey"aireplay-ng"$transparent""
		killall aireplay-ng &>$flux_output_device
	fi
	
	if ps -A | grep -q airodump-ng; then
		echo -e ""$white"["$red"-"$white"] "$white"Kill "$grey"airodump-ng"$transparent""
		killall airodump-ng &>$flux_output_device
	fi
	
	if ps a | grep python| grep fakedns; then
		echo -e ""$white"["$red"-"$white"] "$white"Kill "$grey"python"$transparent""
		kill $(ps a | grep python| grep fakedns | awk '{print $1}') &>$flux_output_device
	fi
	
	if ps -A | grep -q hostapd; then
		echo -e ""$white"["$red"-"$white"] "$white"Kill "$grey"hostapd"$transparent""
		killall hostapd &>$flux_output_device
	fi
	 
	if ps -A | grep -q lighttpd; then
		echo -e ""$white"["$red"-"$white"] "$white"Kill "$grey"lighttpd"$transparent""
		killall lighttpd &>$flux_output_device
	fi
	 
	if ps -A | grep -q dhcpd; then
		echo -e ""$white"["$red"-"$white"] "$white"Kill "$grey"dhcpd"$transparent""
		killall dhcpd &>$flux_output_device
	fi
	
	if ps -A | grep -q mdk3; then
		echo -e ""$white"["$red"-"$white"] "$white"Kill "$grey"mdk3"$transparent""
		killall mdk3 &>$flux_output_device
	fi
	
	if [ "$WIFI_MONITOR" != "" ]; then
		echo -e ""$weis"["$rot"-"$weis"] "$weis"Detect Interface "$verde"$WIFI_MONITOR"$transparent""
		./airmon stop $WIFI_MONITOR &> $flux_output_device
	fi
	                                                
       
	if [ "$WIFI" != "" ]; then
		echo -e ""$weis"["$rot"-"$weis"] "$weis"Detect Interface "$verde"$WIFI"$transparent""
		./airmon stop $WIFI &> $flux_output_device
	fi
	
	
	if [ "$(cat /proc/sys/net/ipv4/ip_forward)" != "0" ]; then
		echo -e ""$white"["$red"-"$white"] "$white"Restoring "$grey"ipforwarding"$transparent""
		echo "0" > /proc/sys/net/ipv4/ip_forward #stop ipforwarding
	fi
	
	echo -e ""$white"["$red"-"$white"] "$white"Cleaning "$grey"iptables"$transparent""
	iptables --flush 
	iptables --table nat --flush
	iptables --delete-chain
	iptables --table nat --delete-chain
	
	echo -e ""$white"["$red"-"$white"] "$white"Restoring "$grey"tput"$transparent""
	tput cnorm
	
	if [ $FLUX_DEBUG != 1 ]; then
		
		echo -e ""$white"["$red"-"$white"] "$white"Delete "$grey"files"$transparent""
		rm -R $DUMP_PATH/* &>$flux_output_device
	fi
	
	echo -e ""$white"["$red"-"$white"] "$white"Restarting "$grey"NetworkManager"$transparent""
	service restart network-manager &> $flux_output_device &
	
	echo -e ""$white"["$green"+"$white"] "$green"Cleaning performed successfully!"$transparent""
	exit
	
}

