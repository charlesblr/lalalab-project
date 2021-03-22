# FROM nginx:latest
#
# COPY ./hello.html /usr/share/nginx/html/hello.html

FROM httpd:2.4

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

COPY ./public-html/ /usr/local/apache2/htdocs/