<img src="https://github.com/KnowledgePending/GeoDjango-Docker/blob/master/images/logo.png?raw=true" width ="100"> 

# [GeoDjango Docker environment](https://github.com/KnowledgePending/GeoDjango-Docker)
🐳 🗺️ Docker environment for GeoDjango Development  
<br>
[![Docker Pulls](https://img.shields.io/docker/pulls/bryankp/geodjango.svg)](https://hub.docker.com/r/bryankp/geodjango)  

## Image details
* Ubuntu 19.04 Disco Dingo
* Python 3.6

## Option 1. Build Docker Image
* From within the directory of the Dockerfile execute the following command to build the image
```BASH
docker build -t geodjango .
```
* To run with bash and a shared volume
```BASH
docker run -v <host_path>:<container_path> --network=host -ti geodjango bash
```
* Start Postgres DB using docker image with postgis support
```
docker run --network=host -e POSTGRES_PASSWORD=<postgres_password> -e POSTGRES_USER=<postgres_username> -e POSTGRES_DB=<postgres_db_name> -d kartoza/postgis
```

## Option 2. Pull image from Docker Hub
* Go to the repository page [bryankp/geodjango](https://hub.docker.com/r/bryankp/geodjango)
* Pull the latest image
```BASH
docker pull bryankp/geodjango:latest
```
* To run with bash and a shared volume
```BASH
docker run -v <host_path>:<container_path> --network=host -ti bryankp/geodjango:latest bash
```
### Example Programs
* Official [GeoDjango Tutorial](https://docs.djangoproject.com/en/2.2/ref/contrib/gis/tutorial/)
