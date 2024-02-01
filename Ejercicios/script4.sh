#!/bin/bash

echo "Introduce por parametro el nombre del archivo que quieres crear: "

if [ -e $1 ]
then

echo "El fichero que quieres crear ya existe..."


else
echo "creando el directorio $1 "
mkdir $1
cd $1
touch fich
ls /dev/t*[0-9] >> fich
cat /etc/passwd >> fich
more fich
fi

