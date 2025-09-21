FROM tomcat:latest
COPY abc_tech.war /usr/local/tomcat/webapps/
RUN sed -i 's/port="8080"/port="8081"/g' /usr/local/tomcat/conf/server.xml
EXPOSE 8081
CMD ["catalina.sh", "run"]
