FROM centos:latest
MAINTAINER yuvrajpatel008@outlook.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-template/downnload/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/*
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 22