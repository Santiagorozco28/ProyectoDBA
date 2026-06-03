#!/bin/bash
# Script para reconstruir los índices de la base de datos de laboratorio

echo "Iniciando reindexación de la base de datos db_laboratorio..."

# Se conecta localmente y ejecuta el comando de reconstrucción
mongosh mongodb://127.0.0.1:27017/db_laboratorio --quiet --eval "
  db.getCollectionNames().forEach(function(collection) {
    print('Reindexando colección: ' + collection);
    db[collection].reIndex();
  });
"

echo "Reindexación completada."