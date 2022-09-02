FROM tomcat:latest
WORKDIR /usr/local/tomcat/
RUN mv webapps webapps_old /
    mv webapps.dist webapps /
    mv conf/tomcat-users.xml conf/tomcat-users_old.xml
ADD tomcat-users.xml conf/tomcat-users.xml
ADD pharmacy1.war /usr/local/tomcat/webapps
