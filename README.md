# spring-mysql-docker

**PS:use container name instead of local host** 

**Step** **1:** pull the mysql image 

docker pull mysql:latest

**step 2:** create network 

docker network create docker-spring-mysql

**step** **3:** run mysql  image in container

docker run  --network docker-spring-mysql  --name mysqldb -e MYSQL_ROOT_PASSWORD=1234 -d -p 3306:3306 mysql:5.7.13

**step 4:** access mysql bash in bash 

docker ps 

docker exec -it <containerid> bash

**step 4:**  :build the jar file 

mvn clean install


**step 5:** build the docker image 

docker build -t application.jar .

**step 6:**  run application image  inside the network 

docker run --network docker-spring-mysql --name application  -p 8080:8080 -d application.jar 
