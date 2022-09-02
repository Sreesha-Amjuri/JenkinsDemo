FROM tomcat:latest
WORKDIR /usr/local/tomcat/
RUN mv webapps webapps_old 
RUN mv webapps.dist webapps 
RUN mv conf/tomcat-users.xml conf/tomcat-users_old.xml
RUN mv /usr/local/tomcat/webapps/manager/META-INF/context.xml /usr/local/tomcat/webapps/manager/META-INF/context_old.xml
RUN mv /usr/local/tomcat/webapps/host-manager/META-INFcontext.xml mv /usr/local/tomcat/webapps/host-manager/META-INF/context_old.xml
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ADD context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
ADD tomcat-users.xml conf/tomcat-users.xml
ADD pharmacy1.war /usr/local/tomcat/webapps
