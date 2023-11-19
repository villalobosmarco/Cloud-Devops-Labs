#!/bin/bash

echo ""
echo "-----------------------------------------------------------------------------"
read -p "Ingrese el path a consultar. Seguidamente se mostratrá su tamaño y contenido: " path

echo ""
echo "El tamaño de" $path "es de" $(ls -sd $path | grep -Eo '[0-9]') "btyes." && echo "El contenido de" $path "se detalla a continuación:" $(ls $path)
echo ""
