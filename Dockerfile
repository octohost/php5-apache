FROM octohost/php5

RUN apt-get update
RUN apt-get install -y apache2 libapache2-mod-php5 php5-mysql
RUN a2enmod rewrite
RUN a2enmod expires
RUN a2enmod headers
RUN a2enmod remoteip

ADD ./apache2.conf /etc/apache2/apache2.conf
ADD ./default.conf /etc/apache2/sites-available/000-default.conf
ADD ./security.conf /etc/apache2/conf-available/security.conf
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh
RUN rm -f /var/www/index.html
