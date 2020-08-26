FROM centos:latest
LABEL maintainer="Containers on AWS"
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY Containers_on_AWS.png, Containers_vs_VMs.png, Docker_Architecture.png /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

