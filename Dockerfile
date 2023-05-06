# Utilisation d'une image Node.js officielle de Docker Hub
FROM node:latest

# le répertoire de travail pour l'application
WORKDIR /app

# Copie des fichiers du projet dans l'image Docker
COPY . .

# Installation des dépendances de l'application
RUN npm install

# Exposer le port 3000 pour l'application
EXPOSE 3000

# Définission la commande pour démarrer l'application
CMD [ "npm", "start" ]
