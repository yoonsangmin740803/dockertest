FROM ubuntu:14.04
MAINTAINER "korea yoon <mis93ysm@naver.com>"
LABEL "purpose"="practice"
RUN apt-get update
RUN apt-get install apache2 -y
ADD ./test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash","-c","echo hell >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND

