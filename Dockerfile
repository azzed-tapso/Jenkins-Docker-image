# Base image 
FROM fedora

LABEL Description="this is my fisrt docker image"
LABEL Maintenair="Abdel Aziz Tapsoba"
# Running command
RUN yum update -y

RUN yum install httpd -y


# Copy index file to contenaire
COPY index.html /var/www/html

EXPOSE 80

CMD [ "-D","FOREGROUND" ]

ENTRYPOINT [ "/usr/sbin/httpd" ]
