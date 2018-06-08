# Dockerfile for creating a Docker image for OL 7 and httpd and perl  
 FROM oraclelinux  
MAINTAINER Mike Chanslor <michael.chanslor@gmail.com>  
RUN yum install -y httpd 
RUN mkdir -p /var/www/html/ && echo "Example Web Server Content" > /var/www/html/index.html  
EXPOSE 80  
CMD /usr/sbin/httpd -D FOREGROUND
