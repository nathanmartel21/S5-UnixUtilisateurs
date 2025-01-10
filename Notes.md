## Notes : 


- Par substitution, on met toujours entre guillements "$VARIABLE" pour eviter les espaces.
- Toujours utiliser printf pour ne pas avoir de problèmes de caractère NULL.
- Controler le nombre d'arguments passés :
  ```
  if [ $# -ne 1 ]; then
    echo "Le script prend en compte qu'un seul paramètre".
    exit 1
  fi
- Timestamp :
  ```
  date -d@0
  ```
  Temps depuis le 1er janv 1970 à 1h du matin (car UTC)
- Toujours mettre ```set -euo pipefail``` juste après le shibang pour sécurité de l'exécution du script
- Shibang : ```#! /usr/bin/env bash```
- ```${var-}``` --> essaye d'accéder à la variable var sinon intialise la
- ```${page-accueil}``` --> essaye d'accéder à la variable page sinon initialise page=accueil
- ```command || true``` --> j'autorise que la commande command crash si jamais
- ```$0``` --> contient la chaine exacte du script (pour permettre de l'appeler par exemple)
- ```[``` --> pour tester
  - ```-x``` --> exécute
