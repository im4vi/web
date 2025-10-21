#!/bin/bash

# Generar el sitio
bundle exec jekyll build

# Limpiar carpeta de deploy
rm -rf ~/web-deploy/*
cp -r _site/* ~/web-deploy/

# Subir al repo de despliegue
cd ~/web-deploy
git add .
git commit -m "deploy: actualización automática $(date)"
git push origin main

echo "Sitio desplegado correctamente"
