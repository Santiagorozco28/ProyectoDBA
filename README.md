# Clúster de Alta Disponibilidad y Tolerancia a Fallos - MongoDB
**Proyecto Final: Administración de Bases de Datos** **Instituto Tecnológico de La Laguna (TECNM)**

Este repositorio contiene la configuración, scripts de automatización y documentación técnica para el despliegue de un clúster de base de datos **MongoDB** en **Oracle Cloud Infrastructure (OCI)**, utilizando una arquitectura de *Replica Set* de 3 nodos con balanceo de carga y monitoreo.

## Arquitectura
- **DBMS:** MongoDB v7.0 (Community Edition)
- **Nodos:** 3 Instancias Ubuntu 22.04 LTS en OCI.
- **Balanceador de Carga:** HAProxy (Puerto 27018).
- **Monitoreo:** Prometheus + Grafana (Puerto 3000).
- **Replica Set:** `rs-tecnm` con 1 Primario y 2 Secundarios.

## Estructura de Scripts
- `install_mongo.sh`: Instalación automatizada del motor en Ubuntu.
- `backup_diario.sh`: Respaldo Full + Oplog (PITR).
- `limpieza_logs.sh`: Mantenimiento y purga de backups con +7 días.
- `reindex_db.sh`: Optimización de índices de las colecciones.

## Instalación Rápida
1. **Configurar Hosts:** Añadir las IPs privadas en `/etc/hosts`.
2. **Instalar MongoDB:**
   ```bash
   chmod +x install_mongo.sh
   ./install_mongo.sh