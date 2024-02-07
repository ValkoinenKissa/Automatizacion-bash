opcion=0

while [ "$opcion" -ne 4 ]
do

echo "Bienvenido al programa de gestion de usuarios, selecciona una opcion:"

echo "1. Alta"
echo "2. Baja"
echo "3. Modificacion"
echo "4. Salir de la Aplicación"


read opcion

case $opcion in

    1)
        echo "Introduce el nombre de usuario que quieres dar de alta: "
        read usuario
            if [ -z "$usuario" ]
            then
                echo "No has introducido nada, por favor introduce un nombre para el usuario..."
            else
                sudo adduser $usuario
                echo "El usuario $usuario ha sido añadido correctamente"
            fi
    ;;

    2)
        echo "Introduce el usuario que quieras dar de baja: "
        read usuario
        if [ -z "$usuario" ]
        then
            echo "No has introducido nada, por favor introduce un nombre para el usuario..."
        else
            sudo deluser $usuario
            echo "El usuario $usuario ha sido añadido correctamente"

        fi
    ;;




done