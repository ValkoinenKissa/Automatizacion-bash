#!/bin/bash

opcion=0

while [ $opcion -ne 4 ]
do
    echo "Hola usuario, introduce la opción que deseas hacer:"
    echo "1-Alta"
    echo "2-Baja"
    echo "3-Modificación"
    echo "4-Salir"
    read opcion

    case $opcion in
        1)
            echo "Introduce el nombre del nuevo usuario:"
            read nombre

            if [ -z "$nombre" ]
            then
                echo "Por favor, introduce correctamente el nombre de usuario"
            else
                sudo adduser $nombre
                echo "Usuario $nombre ha sido creado correctamente!!"
            fi
            ;;
        2)
            echo "Introduce el nombre del usuario que quieres borrar"
            read nombre
            
            if [ -z "$nombre" ]
            then
                echo "Por favor, introduce correctamente el nombre de usuario que quieres borrar"
            else
                echo "Usuario $nombre ha sido borrado correctamente!!"
                sudo deluser $nombre
            fi
            
            ;;
        3)
            echo "Introduce el nombre del usuario que quieres modificar"
            read nombre
            
            if [ -z "$nombre" ]
            then
                echo "Por favor, introduce correctamente el nombre de usuario que quieres modificar"
            else
                sudo chfn $nombre
            fi
            ;;
        4)
            echo "Saliendo del programa. ¡Hasta luego!"
            ;;
        *)
            echo "Opción no válida. Por favor, selecciona una opción válida."
            ;;
    esac

done
