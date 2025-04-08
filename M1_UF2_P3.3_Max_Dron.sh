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

# echo "- 4 - Crea un directori on hi hagin diversos (almenys tres) fitxers, on el nom del fitxer
# sigui el de l’usuari a crear i dintre del fitxer hi hagi les carpetes que ha de tindre."

# echo "  Introdueix el teu nom:"
# read userName

# num=0

# createDir(){
#   mkdir "./$1$2"
# }
# createFile(){
#   echo -e "Descargas\nDocumentos\nEscritorio\nImágenes\nMúsica\nPlantillas\nPúblico\nsnap\nVídeos" > "$1$2.txt"
# }

# until createDir "$userName" "$num" 2> /dev/null; do
#   num=$((num + 1))
# done

# echo "  S'ha creat directori amb nom: $userName$num"

# cd "./$userName$num"

# num=0
# for element in 1 2 3; do
#   createFile "$userName" "$num" 2> /dev/null
#   num=$((num + 1))
# done

# echo ""

echo "- 5 - Crea un directori on hi hagin diversos (almenys tres) fitxers, on el nom del fitxer..."
checkGroup(){
  grep "$1" /etc/group
}
createGroup(){
  sudo groupadd "$1"
}
checkUser(){
  grep $1 /etc/passwd
}
createUser(){
  sudo useradd -G -m "$3" "$1"
  echo "$1:$2" | sudo chpasswd
}
createDir(){
  rm -rf $1
  mkdir $1
  sudo chmod 775 $1
}
assignPermissions(){
  sudo chown :$1 $2
  sudo chmod g+$3 $2
}

userTriesToWrite(){
  sudo -u $1 touch ./$2/test.txt
  return $?
}

group1="oficina1"
group2="oficina2"
user1="Oriol"
user2="Pau"
user3="alba"
user4="nerea"
dir1="marketing"
dir2="ventas"
permissions="rwx"

# Crear los grupos
if ! checkGroup "$group1"; then
  createGroup "$group1"
fi
if ! checkGroup "$group2"; then
  createGroup "$group2"
fi

# Crear los usuarios con nombre, contraseña y grupo
if ! checkUser $user1;then
  createUser $user1 $user1 $group1
fi
if ! checkUser $user2;then
  createUser $user2 $user2 $group1
fi
if ! checkUser $user3;then
  createUser $user3 $user3 $group2
fi
if ! checkUser $user4;then
  createUser $user4 $user4 $group2
fi
  

# Crear los directorios
createDir $dir1
createDir $dir2

# Asignar los permisos a los grupos sobre los dirs
assignPermissions $group1 $dir1 $permissions
assignPermissions $group2 $dir2 $permissions

# Comprovaciones
if userTriesToWrite $user1 $dir1; then
  echo "  User1 ha pogut escriure en dir1, com ha de ser."
else
  echo "  User1 no ha pogut escriure en dir1, algo no va bé."
fi

if ! userTriesToWrite $user1 $dir2; then
  echo "  User1 no ha pogut escriure en dir2, com ha de ser."
else
  echo "  User1 ha pogut escriure en dir2, algo no va bé."
fi

if userTriesToWrite $user3 $dir2; then
  echo "  User3 ha pogut escriure en dir2, com ha de ser."
else
  echo "  User3 no ha pogut escriure en dir2, algo no va bé."
fi

if ! userTriesToWrite $user3 $dir1; then
  echo "  User3 no ha pogut escriure en dir1, com ha de ser."
else
  echo "  User3 ha pogut escriure en dir1, algo no va bé."
fi


