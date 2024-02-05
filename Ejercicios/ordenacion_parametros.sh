#!/bin/bash

if [ "$1" == "asc" ] || [ "$1" == "desc" ]; then
    echo "Parámetros introducidos: $#"

    if [ "$1" == "asc" ]
    then 
   
    parametrosOrdenados=$(printf "%s\n" "$@" | sort)

    echo "Parámetros ordenados alfabéticamente:"
    echo "$parametrosOrdenados"
    
    fi

    if [ "$1" == "desc" ]
    then
    parametrosOrdenados=$(printf "%s\n" "$@" | sort -r)
    echo "Parametros ordenados descendentemente"
    echo "$parametrosOrdenados"
    fi
    
else
    echo "Introduce una opción de ordenamiento válida..."
fi