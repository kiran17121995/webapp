FROM tomcat:9
VOLUME ["/mnt/jenkins/webapp/target:/usr/local/tomcat/webapps"]
