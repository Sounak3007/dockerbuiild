FROM ubuntu:latest
ENV DEBIAN_FRONTEND = non interactive
RUN apt update && apt install git -y && apt install apache2 -y
CMD ["/usr/sbin/apache2ctl" , "-D" ,"FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
ADD tar.gz /var/www/html
