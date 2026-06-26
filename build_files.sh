#!/bin/bash

echo "🚀 Iniciando build en Vercel..."
echo "🐍 Usando Python: $(python3 --version)"

# Instalar dependencias
echo "📦 Instalando dependencias..."
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# Recolectar estáticos
echo "📁 Recolectando archivos estáticos..."
python3 manage.py collectstatic --noinput

# Migrar base de datos (SQLite)
echo "🗄️ Aplicando migraciones..."
python3 manage.py migrate --noinput

echo "✅ Build completado exitosamente!"