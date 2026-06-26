#!/bin/bash

echo "🚀 Iniciando build en Vercel..."
echo "🐍 Python: $(python3 --version)"

echo "📦 Instalando dependencias..."
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

echo "📁 Recolectando archivos estáticos..."
python3 manage.py collectstatic --noinput

echo "🗄️ Aplicando migraciones..."
python3 manage.py migrate --noinput

echo "✅ Build completado!"