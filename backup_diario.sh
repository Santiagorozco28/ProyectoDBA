#!/bin/bash
# Script para respaldo con soporte Point-In-Time Recovery (PITR)

FECHA=$(date +%Y-%m-%d_%H-%M-%S)
CARPETA_DESTINO="/home/ubuntu/backups/backup_$FECHA"

echo "Iniciando volcado de datos y captura del Oplog..."
# Asegúrate de que la carpeta base exista
mkdir -p /home/ubuntu/backups

# Ejecutar el respaldo
mongodump --host="127.0.0.1" --port=27017 --oplog --out=$CARPETA_DESTINO

echo "Respaldo exitoso. Guardado en: $CARPETA_DESTINO"