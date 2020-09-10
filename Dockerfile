FROM centos:latest
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY Containers*.png /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
