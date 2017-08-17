FROM ubuntu
LABEL Author="mandarin80" Company="Slice"
RUN apt-get update
RUN apt-get install unzip
ADD http://ftp.wayne.edu/apache/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26-deployer.zip ./
RUN unzip ./apache-tomcat-8.5.16.zip -d ./tomcat
RUN rm ./apache-tomcat-8.5.16.zip
ENTRYPOINT ["/bin/sh"]
