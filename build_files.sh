#!/bin/bash

echo "Instalando dependencias..."
python3 -m pip install -r requirements.txt

echo "Recolectando estáticos..."
python3 manage.py collectstatic --noinput

echo "Aplicando migraciones..."
python3 manage.py migrate --noinput

echo "¡Build completado!"