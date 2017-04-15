from centos:centos6

RUN cd /root &&\
 yum update -y &&\
 yum install -y java-1.8.0-openjdk-devel.x86_64 &&\
 yum install -y wget &&\
 wget http://mirrors.hust.edu.cn/apache/tomcat/tomcat-9/v9.0.0.M19/bin/apache-tomcat-9.0.0.M19.tar.gz &&\
 tar zxf apache-tomcat-9.0.0.M19.tar.gz &&\
 mv apache-tomcat-9.0.0.M19 tomcat &&\
 rm -f apache-tomcat-9.0.0.M19.tar.gz &&\
 wget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz &&\
 tar zxf apache-maven-3.5.0-bin.tar.gz &&\
 mv apache-maven-3.5.0 maven &&\
 rm -f apache-maven-3.5.0-bin.tar.gz

ENV PATH $PATH:/root/maven/bin

EXPOSE 8080

ENTRYPOINT ["/bin/bash"]
