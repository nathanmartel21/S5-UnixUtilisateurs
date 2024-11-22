#! /usr/bin/env bash

msg() {
  printf -- "%s\n" "$1" #-- => par exemple pour faire un ls --help (avec --help un folder), pour lister le répertoire --help (s'il existe par exemple)
  }

if [ $# -ne 1 ]; then
  echo "Ce script prend un paramètre."
fi

qrencode -o $1.png "$1" && eog $1.png
