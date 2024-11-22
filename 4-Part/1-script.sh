#!/bin/bash

echo "Le script recherche dans les processus du système une chaine de caractère passé en argument"

if [ $# -ne 1 ]; then
	echo "Ce script prend un paramètre."
	exit 1
fi

echo -e "\nCommande qui va être exécutée : #ps -aux | grep '$1'...\n"

ps -aux | grep "$1"

echo -e "\nVoulez-vous tuer les processus ? (o/n)\n"
read rep

if [ "$rep" == "o" ] || [ "$rep" == "O" ]; then

	#echo -e "\n"
	PID=$(ps -aux | grep "$1" | awk '{print $2}')
	for pid in $PID; do
		
		echo "kill -9 $pid"
		
	done

	#echo "ID des processus : $PID"

	echo -e "\n"
elif [ "$rep" == "n" ] || [ "$rep" == "N" ]; then

	echo -e "\nLes processus n'ont pas été kill"

fi
