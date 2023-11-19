#!/bin/bash
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
