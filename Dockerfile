# Imagen base de Node.js
FROM node:18-alpine

# Crear directorio de la app
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Puerto que expone la app
EXPOSE 3000

# Comando para ejecutar la app
CMD ["node", "app.js"]
