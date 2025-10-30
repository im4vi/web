#!/bin/bash

# Generar el sitio
bundle exec jekyll build

# Limpiar carpeta de web
rm -rf ~/web/*
cp -r _site/* ~/web/

# Subir al repo de despliegue
cd ~/web
git add .
git commit -m "deploy: actualización automática $(date)"
git push origin main

echo "Sitio desplegado correctamente"
