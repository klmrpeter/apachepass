FROM ubuntu:latest
RUN apt update
RUN apt install apache2 apache2-utils -y
RUN apt install curl -y
ADD .htpasswd /etc/apache2/.htpasswd
ADD 000-default.conf /etc/apache2/sites-enabled/000-default.conf
ADD apache2.conf /etc/apache2/apache2.conf
ADD .htaccess /var/www/html/.htaccess
RUN service apache2 restart
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]




