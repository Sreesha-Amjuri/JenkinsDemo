FROM tomcat:latest
ADD pharmacy1.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
