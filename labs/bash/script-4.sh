#!/bin/bash

echo "Los detalles de tu dirección IP se mostrarán a continuación. De no ser así, significa que la conexión al servidor no fue exitosa y se mostrará un mensaje de timeout, indicando que podría no haber conexión a internet."
echo ""
sleep 1s
curl --connect-timeout 5 ipinfo.io
echo ""
