#!/bin/bash
# Created by MvT - 14/02/2023
# A pingsweeper to ping sweep subnets.
#

if [ "$1" == "" ]
then
echo "ip range not passed as argument, please pass in the first three octets."
echo "Syntax: ./PingSweeper.sh 10.1.1. < please be of the dot!!"

else
for hosts in `seq 1 254` ; do
ping -c 1 $1$hosts | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi