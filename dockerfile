# Usar una imagen base oficial de Node.js
FROM node:16-alpine

# Crear el directorio de trabajo y ajustar permisos
WORKDIR /app

# Copiar el archivo package.json y el archivo package-lock.json
COPY package*.json ./

# Ajustar permisos de trabajo y node_modules
RUN mkdir -p /app/node_modules && \
    chown -R node:node /app

# Cambiar al usuario no-root
USER node

# Instalar las dependencias del proyecto
RUN npm install

# Copiar el resto del código de la aplicación
COPY --chown=node:node . .

# Exponer el puerto en el que la aplicación estará escuchando
EXPOSE 3000

# Definir el comando para ejecutar la aplicación
CMD ["npm", "run", "dev"]
