#!/bin/bash

opcion=0

while [ $opcion -ne 7 ]
do
    echo "Selecciona una operación"
    echo "1-Suma"
    echo "2-Resta"
    echo "3-Multiplicación"
    echo "4-División"
    echo "5-Resto División"
    echo "6-Calc Exponente"
    echo "7-Salir del programa"

    read opcion

    case $opcion in
        1)
            echo "Introduce num 1"
            read num1
            echo "Introduce num 2"
            read num2
            resultado=$(($num1 + $num2))
            ;;
        2)
            echo "Introduce num 1"
            read num1
            echo "Introduce num 2"
            read num2
            resultado=$(($num1 - $num2))
            ;;
        3)
            echo "Introduce num 1"
            read num1
            echo "Introduce num 2"
            read num2
            resultado=$(($num1 * $num2))
            ;;
        4)
            echo "Introduce num 1"
            read num1
            echo "Introduce num 2"
            read num2
            resultado=$(($num1 / $num2))
            ;;
        5)
            echo "Introduce num 1"
            read num1
            echo "Introduce num 2"
            read num2
            resultado=$(($num1 % $num2))
            ;;
        6)
            echo "Introduce num 1"
            read num1
            echo "Introduce num 2"
            read num2
            resultado=$((num1 ** num2))
            ;;
        7)
            echo "Has salido del programa correctamente"
            ;;
        *)
            echo "Opción no válida, aprende a leer.."
            ;;
    esac

    if [ $opcion -ne 7 ]; then
        echo "El resultado de la operación seleccionada ($opcion) es: $resultado"
    fi
done

