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
- 
  
