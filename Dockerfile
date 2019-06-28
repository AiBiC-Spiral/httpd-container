FROM    centos:7
LABEL   maintainer "My Name"
RUN     yum update -y && yum clean all
RUN     yum install -y httpd && yum clean all
ADD     run-httpd.sh /run-httpd.sh
RUN     chmod -v +x /run-httpd.sh
EXPOSE  80

ADD     index.html /var/www/html/index.html

CMD     ["/run-httpd.sh"]

