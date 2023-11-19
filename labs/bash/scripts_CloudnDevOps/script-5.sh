#!/bin/bash
while true 
do

sleep 1s
echo ""
echo "------------------------------------------------------------"
echo ""
echo "			M E N U		"
echo ""
echo "		    P R I N C I P A L	"
echo ""
echo "------------------------------------------------------------"
echo ""

echo "Elija una de las opciones disponibles a continuación:"
echo ""
echo "(1) Determinar si un número es PAR o IMPAR."
echo "(2) Mostrar el tamaño de un directorio y ver sus archivos."
echo "(3) Borrar todos los archivos dentro de un path, basado en su extension."
echo "(4) Verificar si tengo conexion a internet."
echo "(5) Salir"
echo ""
read -p "Seleccione una opcion del menú: " opcion

case $opcion in 

	1)
	echo""
	echo --------------------------------------------------------------------------------------------------------------------
	echo "Ingrese un valor numérico. El mismo será procesado y este script determinará si se trata de un número PAR o IMPAR."
	echo --------------------------------------------------------------------------------------------------------------------
	echo ""
	read -p "Ingrese un número: " numero
	echo""

	echo $"El número ingresado fue:" $numero
	echo""

	fun_processnum=$(($numero%2))
	if [ $fun_processnum = 0 ]; then
        	echo "El número" $numero "es un valor PAR."
	else echo "El número" $numero "es un valor IMPAR."
	echo ""
	fi
	;;

	2)
	echo ""
	echo "-----------------------------------------------------------------------------"
	read -p "Ingrese el path a consultar. Seguidamente se mostratrá su tamaño y contenido: " path

	echo ""
	echo "El tamaño de" $path "es de" $(ls -sd $path | grep -Eo '[0-9]') "btyes." && echo "El contenido de" $path "se detalla a continuación:" $(ls $path)
	echo ""
	;;

	3)
	echo "Seleccionó opcion 3"
	read -p "Ingrese un path: " path
	read -p "Ingrese una extension: " ext
	echo $(rm $path/*.$ext)
	echo "Se han eliminado todos los archivos con la extension:" $ext " dentro de la  ruta:" $path"."
	;;

	4)
	echo "Seleccionó opcion 4"
	echo "Los detalles de tu dirección IP se mostrarán a continuación. De no ser así, significa que la conexión al servidor no fue exitosa y se mostrará un mensaje de timeout, indicando que podría no haber conexión a internet."
	echo ""
	sleep 1s
	curl --connect-timeout 5 ipinfo.io
	echo ""
	;;

	5)
	echo "Saliste"
	break
	;;

	*)
	echo "unknown"
	;;

esac
done
