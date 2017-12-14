FROM centos:7
MAINTAINER Pramod Vishwakarma
LABEL Vendor="CentOS"
ENV HTTPD_VERSION=2.4
RUN yum install -y httpd; yum clean all
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D","FOREGROUND"]

