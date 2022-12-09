#!/bin/sh
#InstallScript
#CodedBy vDroPZz
#Github @DroPZsec
#

#COLORED_OUTPUT

blue='\033[94m'
red='\033[91m'
green='\033[92m'
orange='\033[93m'
reset='\e[0m'
magenta='\u001b[35m'
yellow='\u001b[33m'

clear
    sleep 1.0
echo $green "This script will install$reset$red Metasploit-Framework$reset"
    sleep 0.5
echo $green "Sure that you will continue..?$reset$blue(Y/n) $reset"
    read answer;
if [ $answer = n ]; then
    echo $green "Okay, youre chooice but this means that you must exit here... $reset"
    exit
fi
if [ $answer = y ]; then
    echo $green "Wait to start install$reset$red Metasploit-Framework $reset"
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt install curl wget gnupg2
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
    chmod +x msfinstall 
    ./msfinstall
    msfdb init 
    chmod +x MFETB.sh
fi
echo $green
sudo figlet -f small "This Tool coded by:"
echo $reset $blue 
    sleep 1.0
figlet -f big "vDroPZz"
    sleep 1.0
echo $reset $green 
figlet -f small "or on Github:"
    sleep 0.5
echo $reset $blue
figlet -f big "DroPZsec"
exit
/bin/sh