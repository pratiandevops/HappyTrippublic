# Pulling Image
From maven:alpine AS builder

#Working Directory
WORKDIR /usr/application

# Copying Soure Code to Current directory
Copy ./Code/ ./

# Dependency 
Run java -version
Run mvn --version
Run mvn clean package


#From nginx

#Copying .War File to new location 
#Copy --from=builder  /target/happytrip-1.0.0-BUILD-SNAPSHOT.war /Public/

