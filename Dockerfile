FROM tomcat:8-jre8

ADD target/ROOT.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]