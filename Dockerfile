FROM tomcat:latest

LABEL maintainer="Aguerbaoui Nadia"

COPY /home/ubuntu/webapp.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]

