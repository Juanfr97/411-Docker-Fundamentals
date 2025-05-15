
# Contenedor: Entorno ASILADO, donde existen todas las dependecias para ejecutar una aplicacion
# QUE ES UNA IMAGEN???? Una serie de instrucciones que se ejecutan para levantar un contenedor


# Imagen ---> Class Persona
# Contendor ---> Objeto Persona()
# Las imagenes viven en un repositorio de Imagenes (Container Registry). Docker Hub
docker container run hello-world

# Listar los contenedores
docker container ls -a

# Crear contenedor que persista en el tiempo y que exponga un puerto
docker container run -d -p 8081:80 docker/getting-started

# Eliminar contenedor
docker container rm <ID del contenedor>

# Detener un contenedor
docker container stop <ID del contendor> o <el nombre>

# Iniciar un contnedor que ya existe
docker container start <ID del contenedor> o <el nombre>

# Eleiminar contendor forzando
docker container rm -fv <ID del cotnendor>

# Corren un comando para mantenerse prendidos
docker container run --name MaquinaVirtualUbuntu -d ubuntu sleep 3600

# Como ingresar a un contenedor
docker container exec -it <Nombre o ID del contenedor> <comando de inicio>

# NGINX???
docker container run -d -p 8088:80 nginx

# Como construir una imagen???!!
docker build -t node-api:1.0 .

# Mysql
docker container run --name Mysql -e MYSQL_ROOT_PASSWORD=123456 -d -p 3307:3306 mysql:8

# Logs
docker logs <ID>

# Volumes Bind Volumes / Volumenes Administrados
docker volume ls

#Crear Voluem
docker volume create 

# Networks
docker network create <Nombre de network>

docker network connect <nombre de network> <nombre de contenedor>

# Login
docker login -u juanfr97 -p <PASSWORD>

# 1. Se crea aplicacion
# 2. Se crea el Dockerfile
# 3. Construir la imagen
docker build -t juanfr97/docker-fundamentals:v1 .
# 4. Publicar la imagen
docker push juanfr97/docker-fundamentals:v1