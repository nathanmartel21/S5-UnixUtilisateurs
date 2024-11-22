#!/bin/bash

echo "Entrez l'URL de la vidéo YouTube : "
read video_url

echo "Récup des formats disponibles : "
yt-dlp -F "$video_url"

echo "Entrez le code du format audio à télécharger : "
read audio

echo "Entrez code du format vidéo à télécharger : "
read video


