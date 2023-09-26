FROM tomcat:8.5-jdk8-corretto-al2
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD Profile-UTE.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]