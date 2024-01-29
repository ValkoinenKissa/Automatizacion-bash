#!/bin/bash

echo "Introduce dos valores por parametro"


if [ $1 -gt $2 ]
then
    echo "El $1 es mayor que el $2"

elif [ $1 -ge $2 ]
then
    echo "Los dos numeros son iguales"

else
    echo "El $2 es mayor que el $1"
fi