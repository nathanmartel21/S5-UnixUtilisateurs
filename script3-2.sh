#! /usr/bin/env bash

msg() {
  printf -- "%s\n" "$1" #-- => par exemple pour faire un ls --help (avec --help un folder), pour lister le répertoire --help (s'il existe par exemple)
  }

error() {
  >&2 info "$1" # => rediriger ver le canal 2 les erreurs
  [ -z "$2" ] || exit "$2"
  } 

if [ $# -ne 1 ]; then
  echo "Ce script prend un paramètre."
fi

#Le crochet ouvrant est un alias vers la commande test (man [)

[ -x "$(which xclip)" ] || error "Besoin de la commande xclip (sudo apt-get install xclip)" 1
[ -x "$(which qrencode)" ] || error "Besoin de la commande qrencode (sudo apt-get install qrencode)" 1

asked="$1"

[ -z "$asked" ] && asked="$(xclip -o)"
[ -z "$asked" ] && error "Pas de données à encoder" 2

target_directory="XDG_RUNTIME_DIR"
[ -d "$target_directory" ] || target_directory='/tmp'

target_file="$target_directory/qrclip-$(date +%s).png"

encode_error(){
  rm "$target_file"
  error "L'encodage à échoué :(, qrencode est sortie avec : $1" "$1"
}

qrencode -s 8 -o "$target_file" -- "$asked" || encode_error "$?"

# qrencode -o $1.png "$1" && eog $1.png
