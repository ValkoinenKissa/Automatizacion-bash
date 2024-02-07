#!/bin/bash

contrasena=patata
while [ "$contrasena" != "$contrasena2" ]
do

echo "Introduce la palabra secreta, cuando la aciertes saldras del bucle"
read contrasena2

if [ "$contrasena1" = "$contrasena2" ]
then
echo "Has adivinado la palabra secreta!!"

else
echo "La contraseña no es correcta"
fi

done
