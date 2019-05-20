#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo Run as a root
	exit 1
fi

insmod harddoom2.ko
sleep 1s
chmod a+rwx /dev/doom*
