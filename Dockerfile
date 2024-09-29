# Stufe 1: Build-Stufe
FROM node:16 as build

WORKDIR /app

# Kopiere package.json und package-lock.json
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den Rest des Projekts
COPY . .

# Baue die React-App
RUN npm run build

# Stufe 2: Production-Stufe
FROM nginx:alpine

# Entferne den Standard-Nginx-Inhalt
RUN rm -rf /usr/share/nginx/html/*

# Kopiere den Build-Output in den nginx-Ordner
COPY --from=build /app/build /usr/share/nginx/html

# Exponiere Port 80
EXPOSE 80

# Starte Nginx
CMD ["nginx", "-g", "daemon off;"]