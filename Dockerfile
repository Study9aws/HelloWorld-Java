FROM ubuntu
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install openjdk-11-jre-headless -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.64.tar.gz
RUN mv apache-tomcat-9.0.64/* /opt/tomcat
EXPOSE 8181
COPY ./target/HelloWorld-0.0.1-SNAPSHOT.war /opt/tomcat/webapps
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
