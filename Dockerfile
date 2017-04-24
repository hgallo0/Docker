FROM centos:7

RUN yum -y install httpd && \
    yum clean all

EXPOSE 80

ADD run-httpd.sh /run-httpd.sh
ADD index.html /var/www/html/index.html
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
