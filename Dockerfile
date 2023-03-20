FROM nginx:latest
RUN apt-get install -y php-fpm
COPY . /usr/share/nginx/html

