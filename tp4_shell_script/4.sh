#!/bin/bash
#script que pueda ejecutarlo y comprima la carpeta donde me encuentro a un archivo llamado "backup.tar.gz" debera contener un mensaje de finalizacion y debera mostrar el tamaño del archivo
MYVAR=$(pwd)
echo "$MYVAR"
tar -czvf backup.tar.gz "$MYVAR"
du -bsh backup.tar.gz