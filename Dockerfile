FROM centos:latest

RUN yum install -y httpd git

RUN cd /var/www/html && git clone https://github.com/jgraph/drawio.git && cd drawio && git checkout tags/v7.9.2

EXPOSE 8080

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
