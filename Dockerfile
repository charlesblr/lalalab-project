# FROM nginx:latest
#
# COPY ./hello.html /usr/share/nginx/html/hello.html

FROM httpd:2.4

COPY ./hello.html /usr/local/apache2/htdocs/hello.html