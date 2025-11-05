#!/bin/bash

# Instalar dependencias del sistema
apt-get update
apt-get install -y libxml2-dev libxslt1-dev libsasl2-dev libldap2-dev libssl-dev libffi-dev libjpeg-dev libpq-dev libjpeg8-dev liblcms2-dev libblas-dev libatlas-base-dev

# Crear directorio para datos persistentes
mkdir -p /home/site/wwwroot/data
chmod 777 /home/site/wwwroot/data

# Instalar Odoo
pip install -r /home/site/wwwroot/requirements.txt

echo "✅ Despliegue completado"