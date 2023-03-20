FROM nginx:latest
RUN apt-get update
RUN apt-get install -y php-fpm
COPY ./conf.d /etc/nginx/conf.d
COPY . /usr/share/nginx/html


