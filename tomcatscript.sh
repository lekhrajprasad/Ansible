#!/bin/bash

export Version=8.5.65
wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v${Version}/bin/apache-tomcat-${Version}.tar.gz
tar xvfz apache-tomcat-${Version}.tar.gz
mv -f apache-tomcat-${Version}.tar.gz /tmp/
mv apache-tomcat-${Version}/ tomcat8 
cd tomcat8/conf/
sed 's/8080/80/g' server.xml
cd ../bin/
./catalina.sh run


