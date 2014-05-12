php5-apache
=======

Better way to build a PHP5/Apache server.

Once you've built this Dockerfile as `docker build -t octohost/php5-apache .` - your next Dockerfile should look like this:

```
FROM octohost/php5-apache

ADD . /var/www

EXPOSE 80

CMD ["/bin/bash", "/start.sh"]
```

Simple and quick way to push PHP code up.
