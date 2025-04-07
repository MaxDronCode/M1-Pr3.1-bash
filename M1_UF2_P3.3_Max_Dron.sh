#!/bin/bash

# =====================================
# title             : M1_UF2_P3.3_Max_Dron.sh
# description       : P3.3 
# author            : Max Dron
# date              : 07/04/2025
# =====================================

# echo "- 1 - Script que et pregunti usuari, password i comentari(opció useradd -c).
# Afegir un nou usuari amb aquests paràmetres"
# print() {
#   echo "  Introdueix $1:"
# }
# finalPrint(){
#   echo "  Un nou usuari ha sigut creat amb userName: $1, contrasenya: $2 i comentari: $3"
# }
# createUser() {
#   local name="$1"
#   local pass="$2"
#   local comment="$3"
#   sudo useradd -c "$comment" -m "$name"
#   echo "$name:$pass" | sudo chpasswd
# }
# print "el nom d'usuari"
# read userName
# print "la contrasenya"
# read -s password
# print "el comentari"
# read comment

# if createUser "$userName" "$password" "$comment"; then
#   finalPrint "$userName" "$password" "$comment"
# else
#   echo "  S'ha aproduit algun error."
# fi

# echo ""

# echo "- 2 - Script que et pregunti usuari, password i grup. Afegir un nou usuari
# amb aquests paràmetres."
# print(){
#   echo "  Introdueix $1:"
# }
# createUser(){
#   local userName="$1"
#   local password="$2"
#   local group="$3"
#   sudo useradd -m -g "$group" "$userName"
#   echo "$userName:$password" | sudo chpasswd
# }
# finalPrint(){
#   echo "  Un nou usuari ha sigut creat amb userName: $1, contrasenya: $2 i grup: $3"
# }
# checkGroup(){
#   grep "$1" /etc/group
# }
# createGroup(){
#   sudo groupadd "$1"
# }

# print "el nom d'usuari"
# read user
# print "la contrasenya"
# read pass
# print "el grup"
# read group

# if ! checkGroup "$group"; then
#   createGroup "$group"
# fi

# if createUser "$user" "$pass" "$group"; then
#   finalPrint "$user" "$pass" "$group"
# else
#   echo "  S'ha produït algun error."
# fi

# echo ""

# echo "- 3 - Crear diversos usuaris des d&#39;un fitxer de text:"
# createUser(){
#   sudo useradd "$1"
#   echo "$1:$2" | sudo chpasswd
# }
# finalPrint(){
#   echo "  Usuari creat amb nom $1 i contrasenya $2"
# }
# errorPrint(){
#   echo "  Error creant usuari $1"
# }
# while IFS=':' read -r user pass; do
#   if createUser "$user" "$pass"; then
#     finalPrint "$user" "$pass"
#   else
#     errorPrint "$user"
#   fi
# done < ./users.txt

# echo ""

echo "- 4 - Crea un directori on hi hagin diversos (almenys tres) fitxers, on el nom del fitxer
sigui el de l’usuari a crear i dintre del fitxer hi hagi les carpetes que ha de tindre."

Hola
