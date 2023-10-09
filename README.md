# spring-mysql-docker-

**Step** **1:** pull the mysql image 

docker pull mysql:latest

**step 2:** create network 

docker network create docker-spring-mysql

**step** **3:** run mysql  image in container

docker run --name mysqldb --network docker-spring-mysql -e MYSQL_ROOT_PASSWORD=1234 -d -p 3306:3306 mysql:5.7.13

**step 4:** access mysql bash in bash 

docker ps 

docker exec -it <containerid> bash
