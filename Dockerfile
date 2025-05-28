FROM nginx:alpine

# Copie de la configuration Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Script d'initialisation pour générer le certificat
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Création du dossier SSL
RUN mkdir -p /etc/nginx/ssl

# Point d'entrée
ENTRYPOINT ["/entrypoint.sh"]
