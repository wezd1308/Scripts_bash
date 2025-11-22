

# Backup Script
Script en Bash para comprimir un directorio origen y mover el archivo comprimido hacia un directorio destino.
Los directorios se reciben como argumentos al ejecutar el script.

# Características
✔ Comprime el directorio origen usando tar.gz
✔ Crea backups con nombre dinámico basado en fecha/hora
✔ Valida si el directorio destino existe
✔ Si no existe, lo crea automáticamente
✔ No es necesario editar el script internamente

# Requisitos

Linux
Bash
Comando tar


# Uso
Ejecutar el script pasándole:
./log-archive.sh <directorio_origen> <directorio_destino>


¿Qué hace exactamente?
*Comprueba si el directorio destino existe

*Si no existe → lo crea

*Comprime el directorio origen completo

*Genera un archivo con formato:
log_AAMMDD-HHMM.tar.gz

Lo mueve al directorio destino.

👤 Autor
Walter Zambrano






