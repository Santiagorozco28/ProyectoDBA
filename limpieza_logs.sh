#!/bin/bash
# Script para eliminar respaldos con más de 7 días de antigüedad

DIRECTORIO_BACKUPS="/home/ubuntu/backups/"

echo "Buscando respaldos antiguos en $DIRECTORIO_BACKUPS..."

# Encuentra carpetas (-type d) más viejas de 7 días (-mtime +7) y bórralas
find $DIRECTORIO_BACKUPS -type d -mtime +7 -exec rm -rf {} +

echo "Limpieza de almacenamiento completada."