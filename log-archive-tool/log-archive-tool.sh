#!/bin/bash

#Valida si el usuario ingreso los datos par los argumentos
if [ $# -eq 0 ]; then
    echo -e "\e[31m No se ha introducido un argumento\e[0m"
    exit 1
fi

#Variable del argumento 1, directorio a respaldar
dir1=$1

#Variable del argumento 2, directorio destino
dir2=$2

#Funcion para comprimir y mover el directorio
function backup {
        echo "Respaldando directorio: $dir1 en $dir2"
	var1="log_$(date +%y%m%d-%H%M).tar.gz" 
	tar -czf "$var1" "$dir1"
	sleep 5
	mv $var1 $dir2
echo "Directorio Respaldado en $dir2"
	
}


#Condicional para validar si el directorio destino existe o no
if [ -d "$dir2" ]; then

    backup
    
else
    echo "Creando carpeta de respaldo: $dir2"
    mkdir $dir2
    sleep 5

    if [ -d "$dir2" ]; then

	backup
    fi
fi
       

