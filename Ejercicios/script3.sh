#!/bin/bash

echo "Introduce un archivo para comporbar sus permisos"

if [ -f $1 ]
then

    if [ -r $1  ]
    then
    echo "El archivo que has introducido tienen permisos de lectura"

    elif [ -w $1 ]
    then
    echo "El archivo que has pasado como parametro tiene permisos de escritura"

    else
    echo "El archivo introducido tiene permisos de ejecución"
    fi
else
    echo "Introduce un archivo"
fi