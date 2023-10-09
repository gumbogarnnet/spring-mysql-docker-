# spring-mysql-docker-

**Step** **1:** pull the image 

docker pull mysql:latest

**step** **2:** run image in container

docker run -e MYSQL_ROOT_PASSWORD=1234 -d -p 3306:3306 mysql:5.7.13
