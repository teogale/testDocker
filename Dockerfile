FROM ubuntu
MAINTAINER corentin fragnaud
RUN apt-get update
RUN apt-get install -y nginx
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
WORKDIR /var/www/html/
COPY /siteWeb/index.html .
EXPOSE 80