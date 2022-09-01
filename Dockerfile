FROM tomcat:latest
ADD . /usr/local/tomcat/webapp
CMD ["catalina.sh", "run"]
