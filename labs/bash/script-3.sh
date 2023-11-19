#!/bin/bash

read -p "Ingrese un path: " path
read -p "Ingrese una extension: " ext
echo $(rm $path/*.$ext)
echo "Se han eliminado todos los archivos con la extension:" $ext " dentro de la  ruta:" $path"."
