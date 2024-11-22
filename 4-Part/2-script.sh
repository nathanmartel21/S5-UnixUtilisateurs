#!/bin/bash

echo "Le script recherche les répertoires, fichiers et sous répertoires de l'argument donné. Il prend donc en compte un paramètre."

if [ $# -ne 1 ]; then
	echo "Ce script prend un paramètre."
	exit 1
fi

echo -e "\nParcours : \n"

find $1 -print 2>/dev/null
