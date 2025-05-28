#!/bin/sh

# Génère un certificat auto-signé si non présent
if [ ! -f /etc/nginx/ssl/testproject.crt ]; then
  echo "Génération du certificat SSL auto-signé..."
  openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/testproject.key \
    -out /etc/nginx/ssl/testproject.crt \
    -subj "/C=LU/ST=Luxembourg/L=Howald/O=TestProject/OU=Dev/CN=testproject.onrender.com"
fi

# Lancer Nginx
nginx -g "daemon off;"
