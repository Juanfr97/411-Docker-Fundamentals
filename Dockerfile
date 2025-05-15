FROM node:alpine

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

# Se utliza cuando quieres ejecutar un comando mientras se construye la imagen
RUN npm install 
COPY index.js ./
EXPOSE 3000

# Se utiliza para ejecutar un comando cuando se levanta el cotnenedor
CMD ["node","index.js"]