FROM nginx:alpine

# Installer openssl
RUN apk add --no-cache openssl

# Copier la configuration Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copier le script d'entrée
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Créer le dossier SSL
RUN mkdir -p /etc/nginx/ssl

# Point d'entrée
ENTRYPOINT ["/entrypoint.sh"]
