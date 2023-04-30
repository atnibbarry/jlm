# Utiliser une image Node.js officielle de Docker Hub
FROM node:latest

# Définir le répertoire de travail pour l'application
WORKDIR /app

# Copier les fichiers du projet dans l'image Docker
COPY . .

# Installer les dépendances de l'application
RUN npm install

# Exposer le port 3000 pour l'application
EXPOSE 3000

# Définir la commande pour démarrer l'application
CMD [ "npm", "start" ]
