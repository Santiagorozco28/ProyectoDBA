#!/bin/bash
# Script de instalación automatizada de MongoDB 7.0 para Ubuntu 22.04
echo "=== Iniciando instalación de MongoDB ==="

# Instalar dependencias necesarias
sudo apt-get update && sudo apt-get install gnupg curl -y

# Importar la llave pública GPG oficial de MongoDB
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor

# Crear el archivo de lista para el gestor de paquetes apt
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

# Actualizar repositorios e instalar
sudo apt-get update && sudo apt-get install -y mongodb-org

# Habilitar e iniciar el servicio
sudo systemctl enable --now mongod

echo "=== Instalación finalizada. Verifica con: systemctl status mongod ==="