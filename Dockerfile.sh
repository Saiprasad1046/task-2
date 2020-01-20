FROM centos

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50-deployer.tar.gz
RUN tar -xvf apache-tomcat-8.5.50-deployer.tar.gz
#RUN mv apache-tomcat-8.5.50  /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/9493146128/Docker.git


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
