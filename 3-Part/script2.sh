#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Le sript prend en compte un paramètre"
	exit 1
fi

qrencode -o $1.png "$1" && eog $1.png


