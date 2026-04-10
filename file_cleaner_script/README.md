

# 🧹 File Cleaner Script (Archivos > 1GB)

Script en Bash para buscar y eliminar archivos mayores a 1GB dentro de un directorio específico.

## 📌 Descripción

Este script recorre un directorio definido y detecta archivos cuyo tamaño supere 1GB.
Si encuentra archivos que cumplen esta condición, los elimina automáticamente.

Es útil para:

* Liberar espacio en disco
* Automatizar tareas de mantenimiento
* Limpieza de servidores o entornos locales

---

## ⚙️ Funcionamiento

1. Define un directorio base
2. Busca archivos mayores a 1GB
3. Si encuentra archivos:

   * Muestra un mensaje
   * Los elimina
4. Si no encuentra archivos:

   * Informa que no hay archivos para borrar

---

## 🧾 Script

```bash
#!/bin/bash

DIRECTORIO="/home/wzambrano"
ARCHIVOS=$(find "$DIRECTORIO" -type f -size +1G)

if  [ -n "$ARCHIVOS" ]; then

    echo "Borrando archivos mayores a 1GB .."
    rm -f "$ARCHIVOS"
     
    sleep 10

else

    echo "No Se encotraron archivos mayores a 1GB" 
fi
```

---

## 🚀 Uso

1. Clonar el repositorio:

```bash
git clone https://github.com/wezd1308/Scripts_bash/tree/main/file_cleaner_script
```

2. Dar permisos de ejecución:

```bash
chmod +x file_cleaner_script.sh
```

3. Ejecutar:

```bash
./file_cleaner_script.sh
```

---

## ⚠️ Advertencias

* ❗ **Este script elimina archivos de forma permanente**
* ❗ No hay confirmación antes de borrar
* ❗ Usar con precaución en directorios sensibles
