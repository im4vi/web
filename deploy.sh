#!/bin/bash
set -e

# Generar el sitio
echo "Generando sitio..."
bundle exec jekyll build

# Subir al repo de despliegue

echo "Subiendo contenido estático a GitHub"
cd ~/web
git add .
git commit -m "deploy: actualización automática $(date)"
git push origin main

cd ..
echo "Sitio desplegado correctamente. Netlify actualizará automáticamente el sitio."
