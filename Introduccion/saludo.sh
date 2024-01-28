#!/bin/bash

echo "Primer parametro"
echo $1
echo "Segundo parametro"
echo $2
echo $$
echo $0
echo $#
echo $@
echo $*

echo -n "Dame un numero payo"
read Num1
echo -n "Dame otro numero shuermano"
read Num2

resultado=$(($Num1+$Num2))
echo "El resultado de la suma es: $resultado"

resultado2=$((1+2))

echo "El resulatdo de la suma manual es: $resultado2"
