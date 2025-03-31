#!/bin/bash

# =====================================
# title             : M1_UF2_P3.2_Max_Dron.sh
# description       : P3.2 
# author            : Max Dron
# date              : 31/03/2025
# =====================================

# echo "- 1 - Script que rep una llista de noms d'arxius..."
# for arg in $@; do
#   if test -f $arg;  then
#     echo "  L'argument $arg es un arxiu regular"
#     echo "  -----------------------------"
#   elif test -d $arg; then
#     echo "  L'argument $arg es un directori"
#     echo "  -----------------------------"
#   else
#     echo "  L'argument $arg no existeix"
#     echo "  -----------------------------"
#   fi
# done

# echo ""

# echo "- 2 - Script que saluda a tots els usuaris de /etc/passwd..."
# while IFS=: read -r username password uid gid fullname homedir shell; do
#   echo "  Hola $username."
#   echo "  -----------------------------"
# done < /etc/passwd

# echo ""

# echo "- 3 - Script que els fitxers passats com a paràmetre..."
# for arg in $@; do
#   if rm -i $arg; then
#     echo "  El fitxer $arg s'ha pogut eliminar correctament"
#   else
#     echo "  El fitxer $arg NO s'ha pogut eliminar"
#   fi
# done

# echo ""

# echo "- 4 - Script que mostra un factorial amb un bucle while..."
# echo "  Introdueix un número enter per pantalla (amb bucle while):"
# acc=1
# num=$1
# while [ $num -gt 0 ]; do
#   acc=$((acc * num))
#   num=$((num - 1))
# done
# echo "  El factorial es $acc"

# echo ""

# echo "  Introdueix un número enter per pantalla (amb bucle until):"
# acc=1
# num=$1
# until [ $num -lt 1 ]; do
#   acc=$((acc * num))
#   num=$((num - 1))
# done
# echo "  El factorial es $acc"

# echo ""

# echo "- 5 - Script que rep paraules i les afegeix a un fitxer..."
# for arg in $@; do
#   firstchar=${arg:0:1}
#   `echo "$arg" >> $firstchar.txt`
# done

# echo ""

# echo "- 6 - Script que a partir de la ruta d'un directori determinat..."
# if [ -d "$1" ]; then
#   cd $1
# else
#   mkdir $1 || { echo "Error: No s'ha pogut crear el directori."; exit 1; }
#   cd $1
# fi

# echo ""

# echo "- 7 - Script que comprova amb quin usuari s'ha executat..."
# if [ "$EUID" -eq 0 ];  then
#   echo "  Sóc l'amo del món"
#   echo "  PID del shellscript: $$"
# else
#   echo "  No s'ha executat com a superusuari. Reexecutant amb permisos d'administrador..."
#   sudo bash "$0"
# fi

# echo ""

# echo "- 8 - Script que trenca un fitxer en parts..."
# file=$1
# num_parts=$2

# file_size=$(wc -c < "$file")
# part_size=$((file_size / num_parts))

# split -b "$part_size" "$file" "${file}_part_"

# generated_parts=$(ls "${file}_part_"* 2>/dev/null | wc -l)
# if [ "$generated_parts" -eq "$num_parts" ]; then
#   echo "El fitxer s'ha trencat correctament en $num_parts parts."
# else
#   echo "Error: No s'han generat exactament $num_parts parts. S'han generat $generated_parts parts."
#   exit 1
# fi

# echo ""

echo "- 8 - Script que trenca un fitxer en parts..."




