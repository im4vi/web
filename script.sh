#!/bin/bash
set -e

echo "Generando sitio..."
bundle exec jekyll build

echo "Subiendo contenido estático a GitHub..."
cd _site
git add .
git commit -m "Actualización automática $(date +"%Y-%m-%d %H:%M:%S")" || echo "Sin cambios que commitear"
git push

cd ..
echo "Deploy completado. Netlify actualizará automáticamente el sitio."
