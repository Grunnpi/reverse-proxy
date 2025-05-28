
FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY clouvert.duckdns.org.crt /etc/nginx/clouvert.duckdns.org.crt
