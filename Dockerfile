# Utiliser une image de base légère
FROM node:18-alpine

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier les fichiers HTML, CSS et JavaScript dans le répertoire de travail du conteneur
COPY . .

# Exposer le port sur lequel l'application sera accessible
EXPOSE 80

# Installer un serveur HTTP simple pour servir les fichiers statiques
RUN npm install -g http-server

# Lancer l'application avec http-server sur le port 80
CMD ["http-server", ".", "-p", "80"]
