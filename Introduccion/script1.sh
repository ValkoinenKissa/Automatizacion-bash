#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Por favor, introduce el nombre del archivo como parámetro."
  exit 1
fi

archivo="$1"

if [ -f "$archivo" ]; then
  echo "Copiando el archivo a /tmp"
  cp "$archivo" /tmp

  echo "Borrando el archivo"
  rm "$archivo"

  echo "El archivo se ha borrado correctamente"
else
  echo "Error: '$archivo' no es un archivo válido."
  exit 1
fi

