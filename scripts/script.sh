#!/bin/sh

# Vérifier si le dossier /app est vide
if [ -z "$(ls -A /app)" ]; then
   echo "/app est vide. Création du projet Vite..."
   npm create vite@latest ./ -- --template vue-ts --y
   npm i
   npx vite --port 5173 --host
else
   echo "/app n'est pas vide. Démarrage du serveur de développement..."
   npx vite --port 5173 --host

fi