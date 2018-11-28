#!/bin/bash
set -x
FILE=$HOME/flag_shutdown


while [ 1 ]
do
PID_KVM=$(pgrep -l kvm | cut -d "/"  -f 2)

if [ -f $FILE ]
then
	kill -9  $PID_KVM
        sleep 2
	rm $FILE
	exit 0

else
	sleep 2
fi
done

