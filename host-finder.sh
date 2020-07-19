#!/usr/bin/bash

# AUTHOR: JAYSON CABRILLAS SAN BUENAVENTURA
# Github: http://github.com/mkdirlove

# Check if nmap installed & install nmap it it's not
if [ "$(which nmap)" == "" ]; then
	read -p "Need to install NMAP (Y/n): " choose
	if [ "$choose" == "y" ] || [ "$choose" == "Y" ]; then
		sudo apt install nmap
	elif [ "$choose" == "n" ] || [ "$choose" == "N" ]; then
		exit
	else
		sudo apt install nmap
	fi
fi

clear
echo
banner()
{
echo -e "\e[91m             ▄█    █▄     ▄██████▄     ▄████████     ███                 \e[91m" 
echo -e "\e[91m            ███    ███   ███    ███   ███    ███ ▀█████████▄             \e[91m" 
echo -e "\e[91m            ███    ███   ███    ███   ███    █▀     ▀███▀▀██             \e[91m" 
echo -e "\e[91m           ▄███▄▄▄▄███▄▄ ███    ███   ███            ███   ▀             \e[91m" 
echo -e "\e[91m          ▀▀███▀▀▀▀███▀  ███    ███ ▀███████████     ███   \e[40;38;5;82mPOWERED BY\e[0m     \e[91m" 
echo -e "\e[91m            ███    ███   ███    ███          ███     ███      \e[30;48;5;82mNMAP\e[0m       \e[91m" 
echo -e "\e[91m            ███    ███   ███    ███    ▄█    ███     ███                 \e[91m" 
echo -e "\e[91m            ███    █▀     ▀██████▀   ▄████████▀     ▄████▀               \e[91m" 
echo                                                                                   
echo -e "\e[91m       ▄████████  ▄█  ███▄▄▄▄   ████████▄     ▄████████    ▄████████    \e[91m" 
echo -e "\e[91m      ███    ███ ███  ███▀▀▀██▄ ███   ▀███   ███    ███   ███    ███    \e[91m" 
echo -e "\e[91m      ███    █▀  ███▌ ███   ███ ███    ███   ███    █▀    ███    ███    \e[91m" 
echo -e "\e[91m     ▄███▄▄▄     ███▌ ███   ███ ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀    \e[91m" 
echo -e "\e[91m    ▀▀███▀▀▀     ███▌ ███   ███ ███    ███ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀      \e[91m" 
echo -e "\e[91m      ███        ███  ███   ███ ███    ███   ███    █▄  ▀███████████    \e[91m" 
echo -e "\e[91m      ███        ███  ███   ███ ███   ▄███   ███    ███   ███    ███    \e[91m" 
echo -e "\e[91m      ███        █▀    ▀█   █▀  ████████▀    ██████████   ███    ███    \e[91m" 
echo -e "\e[91m                                                   ███    ███           \e[91m"
echo
echo -e "\e[93m              \e[40;38;5;82mCODED BY: \e[30;48;5;82m JAYSON CABRILLAS SAN BUENAVENTURA\e[0m               \e[93m"
}

echo
banner
echo
printf "\e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;36m Scan Single HOST/IP     \e[0m\e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;m OS Detection         \e[0m\e[1;31m[\e[0m\e[1;77m07\e[0m\e[1;31m]\e[0m\e[1;93m Show Packets\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;36m Scan Multiple SUBNET    \e[0m\e[1;31m[\e[0m\e[1;77m05\e[0m\e[1;31m]\e[0m\e[1;m Scan Protected Hosts \e[0m\e[1;31m[\e[0m\e[1;77m08\e[0m\e[1;31m]\e[0m\e[1;93m Scan Devices\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;36m Read HOSTNAME File(txt) \e[0m\e[1;31m[\e[0m\e[1;77m06\e[0m\e[1;31m]\e[0m\e[1;m Scan HOST/IP         \e[0m\e[1;31m[\e[0m\e[1;77m00\e[0m\e[1;31m]\e[0m\e[1;93m Exit\e[0m\n"
echo ""
read -p "Choose a number: " finder
if [ "$finder" == "01" ] || [ "$finder" == "1" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap $iphostname

elif [ "$finder" == "02" ] || [ "$finder" == "2" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
for jayson in $iphostname
do
  echo
  nmap -Pn $jayson
done

elif [ "$finder" == "03" ] || [ "$finder" == "3" ];
then
echo
echo -n -e "Enter Text File: "
read txtfile
echo
nmap -iL $txtfile

elif [ "$finder" == "04" ] || [ "$finder" == "4" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap -A $iphostname

elif [ "$finder" == "05" ] || [ "$finder" == "5" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap -PN $iphostname

elif [ "$finder" == "06" ] || [ "$finder" == "6" ];
then
echo
echo -n -e "Enter IPv6-Address: "
read ipv6add
echo
nmap -6 $ipv6add

elif [ "$finder" == "07" ] || [ "$finder" == "7" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --open $iphostname

elif [ "$finder" == "08" ] || [ "$finder" == "8" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --packet-trace $iphostname

elif [ "$finder" == "09" ] || [ "$finder" == "9" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap -T5 $iphostname

elif [ "$finder" == "00" ] || [ "$finder" == "0" ];
then
clear
exit

else
echo
echo -e "\033[1;31m[!] Invalid Input...\033[1;0m"
sleep 1
bash $0
fi
