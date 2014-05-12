FROM octohost/php5

RUN apt-get update
RUN apt-get install -y apache2 libapache2-mod-php5 php5-mysql

ADD ./start.sh /start.sh
RUN chmod 755 /start.sh
RUN rm -f /var/www/index.html
