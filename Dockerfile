FROM centos:latest
LABEL maintainer="Containers on AWS"
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY containerandcat*.jpg /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

