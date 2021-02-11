#!/bin/bash

target="The --target key displays a list of open system TCP ports."
all="The --all key displays the IP addresses and symbolic names of all hosts in the current subnet."

function hosts_ip_adresses {

    myip=`ifconfig eth1 | grep 'inet ' | gawk '{print $2}' | sed 's/addr://'`
    
    nmap -sn $myip/24
}


function open_tcp_ports {

    sudo netstat -lptn | grep LISTEN
}

case "$1" in
    --target) open_tcp_ports ;;
    --all) hosts_ip_adresses ;;
    *) echo -e "DESCRIPTION\n\n--all\n\t$all\n\n--target\n\t$target";;
esac
