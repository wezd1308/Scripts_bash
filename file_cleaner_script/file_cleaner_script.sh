#!/bin/bash

DIRECTORIO="/home/wzambrano"
ARCHIVOS=$(find "$DIRECTORIO" -type f -size +1G)

if  [ -n "$ARCHIVOS" ]; then

    echo "Borrando archivos mayores a 1GB ($(date))" >> log.txt
    rm -f "$ARCHIVOS"
     
    sleep 10

  else

       echo "NO Se encotraron archivos mayores a 1GB ($(date))" >> log.txt
fi
