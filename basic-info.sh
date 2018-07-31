#!/bin/bash
##################################################
# Name: basic-info.sh
# Description: Grabs basic info about the server
# Script Maintainer: xcracker
#
# Last Updated: July 31 2018
##################################################
# 
echo "Info about the server:" > ~/Info.txt
echo "##############################" >> ~/Info.txt
uname -a >> ~/Info.txt
echo "##############################" >> ~/Info.txt
echo 
ifconfig | grep netmask | awk '{i++;print "ipaddr"i":"$2"\t netmask:"$4}' >> ~/Info.txt
echo "##############################" >> ~/Info.txt
route | awk 'NR==3{print $0}' >> ~/Info.txt
echo "##############################" >> ~/Info.txt
cat ~/Info.txt
