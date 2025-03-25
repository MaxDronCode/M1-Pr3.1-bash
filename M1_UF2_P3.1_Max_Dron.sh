#!/bin/bash

# =====================================
# title             : M1_UF2_P3.1_Max_Dron.sh
# description       : P3.1 
# author            : Max Dron
# date              : 24/03/2025
# =====================================

# echo "- 1 - Crea i executa el teu primer script" # Entradilla 
# echo "Hola mon" # echo es la comanda per imprimir per consola, entre cometes el string a imprimir, entre cometes perque llegeixi els espais
# echo ""

# echo "- 2.1 - Definició de variables"
# num=3
# txt=textSenseEspais
# sptxt="Text amb espais"
# echo $num
# echo $txt
# echo $sptxt
# echo ""

# echo "- 2.2 - Assignació dinámica"
# var1=joseluis
# var2=$var1
# echo "  Valor de variable1: $var1, valor de variable2: $var2"
# var1=pepe
# echo "  Hem canvia el valor de la variable1 a: $var1"
# echo ""

# echo "- 2.3 - Ús de variables del sistema"
# echo "  El nom d'usuari es: $USER"
# echo "  El nom del directori personal es: $HOME"
# echo "  El nom del host es: $HOSTNAME"
# echo ""

# echo "- 3 - Cometes"
# echo "Amb cometes dobles:"
# echo "  una cadena literal"
# var1=joseluis
# echo "  cadena amb variables amb valor: $var1"
# miData=$(date "+%Y-%m-%d %H:%M:%S")
# echo "  la comanda date imprimeix: $miData"
# echo "Amb cometes simples:"
# echo '  una cadena literal'
# echo '  cadena amb variables amb valor: $var1'
# echo '  la comanda date imprimeix: $miData'
# echo "Amb inverses:"
# echo `date`
# echo ""

# echo "- 4 - Operacions Aritmètiques"
# echo "  - 4.1 - Operacions bàsiques:"
# num1=5
# num2=10
# echo "  La suma de $num1 i $num2 es: $((num1+num2))"
# echo "  La resta de $num1 i $num2 es: $((num1-num2))"
# echo "  La multiplicació de $num1 i $num2 es: $((num1*num2))"
# echo "  La divisió de $num2 entre $num1 es: $((num2/num1))"
# echo "  El mòdul de $num1 i $num2 es: $((num1%num2))"
# echo "  La potència de $num1 elevat a $num2 es: $((num1**num2))"
# echo "  - 4.2 - Increment i decrement:"
# echo "  La variable 1 te un valor de: $num1"
# echo '  Incrementem la variable en 1 fent $((num1+1))'
# num1=$((num1+1))
# echo "  La variable 1 te un valor de: $num1"
# echo ""

# echo "- 5 - Condicionals"
# echo "  - 5.1 - Condicional simple:"
# echo "  Introdueix la teva edat amb un numero enter:"
# read edat
# if [ "$edat" -ge 18 ]; then 
#   echo "  Pots entrar a la disco"
# else 
#   echo "  Vasito de leche y a dormir"
# fi
# echo "  - 5.2 - Condicional amb cadenes:"
# echo "  Introdueix la primera paraula:"
# read word1
# echo "  Introdueix la segona paraula:"
# read word2
# if test $word1 == $word2
# then
# echo "  Les 2 paraules son IGUALS!"
# else
# echo "  Les 2 paraules son DIFERENTS!"
# fi
# echo "  - 5.2 - Condicional anidat:"
# echo "  Introdueix un numero enter:"
# read num
# if [ $num -gt 0 ]; then
#   echo "  El numero es positiu"
# elif [ $num -lt 0 ]; then
#   echo "  El numero es negatiu"
# else
#   echo "  El numero es 0"
# fi
# echo ""

# echo "- 6 - Bucles"
# echo "  - 6.1 - Bucle while:"
# echo "  Introdueix un numero enter:"
# read num
# tmp=0
# while [ $tmp -lt $num ]; do
#   echo "  Iteració numero: $((tmp+1))"
#   tmp=$((tmp+1))
# done
# echo "  - 6.2 - Bucle until:"
# echo "  Introdueix un numero enter:"
# read num
# until [ $num -lt 1 ]; do
#   echo " Iteració numero: $((num))"
#   num=$((num-1))
# done
# echo "  - 6.3 - Bucle for amb llista:"
# noms=("Pere" "Pau" "Pep" "Pepa")
# for nom in ${noms[@]}; do
#   echo " $nom"
# done
# echo "  - 6.3 - Bucle for amb rang:"
# for i in {1..20..2}; do
#   echo " $i"
# done
# echo "  - 6.3 - Bucle amb sortida de comanda:"
# for i in $(ls); do
#   echo " $i"
# done
# echo ""

# echo "- 7 - Bucles"
# echo "  - 7.1 - Llegir i utilitzar entrada de l'usuari:"
# echo "  Introdueix el teu nom:"
# read nom
# echo " Introdueix la teva edat:"
# read edat
# echo " Hola $nom, tens $edat anys"
# echo " - 7.2 - Contrasenya oculta:"
# echo "  Introdueix la teva contrasenya:"
# read -s pass
# echo " La teva contrasenya es: $pass"

# echo "- 8 - Comandes útils"
# echo "  - 8.1 - Comanda sleep:"
# echo " Preparat..."
# sleep 3
# echo " Llest..."
# sleep 2
# echo " JA!"
# echo "  - 8.2 - Comanda test:"
# fitxer=fitxerProva1.txt
# if test -e $fitxer; then
#   echo " El fitxer $fitxer existeix"
# else
#   echo " El fitxer $fitxer no existeix"
# fi
# dir=/home
# if test -x $dir; then
#   echo " El directori $dir te permisos d'escriptura"
# else
#   echo " El directori $dir no te permisos d'escriptura"
# fi
# num1=5
# num2=10
# if test $num1 -lt $num2; then
#   echo " El numero $num1 es mes petit que $num2"
# elif test $num1 -ge $num2; then
#     echo " El numero $num1 es mes gran que $num2"
# else 
#   echo " El numero $num1 es igual que $num2"
# fi

echo "- 9 - Cerca en el sistema"
while IFS=: read -r username password uid gid fullname homedir shell; do
  echo "Nom d'usuari: $username"
  echo "UID: $uid"
  echo "GID: $gid"
  echo "Directori personal: $homedir"
  echo "-----------------------------"
done < /etc/passwd
