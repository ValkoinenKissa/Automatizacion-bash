#!/bin/bash

echo "Introduce el número de veces que quieres que se impriman los asteriscos"

read veces

for (( i=0; i<veces; i++ )) 
do
  for (( x=0; x<=i; x++ ))
  do
  echo -n "*"
  done
  echo
  
done

