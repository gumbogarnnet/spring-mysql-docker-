# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
FROM openjdk:8
expose 8080
add target/application.jar application.jar
entrypoint ["java","-jar","application.jar"]

CMD ["/bin/sh"]
