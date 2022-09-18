FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps
COPY /mnt/jenkins/target/WebApp.war /usr/local/tomcat/webapps
