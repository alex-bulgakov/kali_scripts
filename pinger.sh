#!/bin/bash

for ip in `seq 1 254`; do
addr=$1.$ip
ping -c 1 $addr | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
