FROM nginx:latest
RUN apt-get update
RUN apt-get install -y php-fpm
RUN apt-get install -y vim
COPY ./conf.d /etc/nginx/conf.d
COPY . /usr/share/nginx/html

CMD service php7.4-fpm start && nginx -g "daemon off;"
EXPOSE 80

#EXPOSE 9000
#ENTRYPOINT ["docker-php-entrypoint", "php-fpm"]

#EXPOSE 80
#ENTRYPOINT ["nginx","-g","daemon off;"]
