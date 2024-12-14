# Utiliser l'image NGINX basée sur Alpine Linux
FROM nginx:alpine

# Copier les fichiers de configuration NGINX
COPY nginx.conf /etc/nginx/nginx.conf

# Copier les fichiers HTML, CSS, JS dans le répertoire de fichiers statiques NGINX
COPY . /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

# Lancer NGINX
CMD ["nginx", "-g", "daemon off;"]
