FROM centos:latest
MAINTAINER SoloECSContainerDemo1
run yum -y install httpd
COPY index.html /var/www/html/
COPY *.jpg /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80