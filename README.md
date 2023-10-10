# spring-mysql-docker

_**PS:use container name instead of local host**_

**Step** **1:** _pull the mysql image_ 

docker pull mysql:latest

**step 2:** _create network_ 

docker network create docker-spring-mysql

**step** **3:** _run mysql  image in container_

docker run  --network docker-spring-mysql  --name mysqldb -e MYSQL_ROOT_PASSWORD=1234 -d  mysql:5.7.13

**step 4:** _access mysql bash in bash_ 

docker ps 

docker exec -it '<containerid>' bash

**step 4:**  :_build the jar file_ 

_skiped **mvn clean install** as the tests were failing application was failing to communicate with mysql container_

mvn package -DskipTests


**step 5:** _build the docker image_ 

docker build -t application .

**step 6:**  _run application image  inside the network_ 

docker run --network docker-spring-mysql --name application  -p 8080:8080 -d application 
