FROM httpd:2.4

COPY ./public-html/ /usr/local/apache2/htdocs/

RUN echo "ServerName 127.0.0.1" >> /usr/local/apache2/conf/httpd.conf

# Restart 

RUN systemctl restart apache2.service
