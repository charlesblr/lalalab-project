FROM httpd:2.4

COPY ./public-html/ /usr/local/apache2/htdocs/

RUN echo "ServerName 0.0.0.0" >> /usr/local/apache2/conf/httpd.conf

