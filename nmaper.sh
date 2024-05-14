#!/bin/bash

line="+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
for ip in `seq 1 254`; do
addr=$1.$ip
result=$(ping -c 1 $addr | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &)
if [$resul != ""]; then
	echo $line
	echo $result
	nmap $addr | grep "Not shown" -C 15 &
	echo $line
fi
done
