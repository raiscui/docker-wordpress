FROM tutum/wordpress-stackable:latest

RUN apt-get -yq install memcached \
&& apt-get install php5-memcached

ENV DB_HOST **LinkMe**
ENV DB_PORT **LinkMe**
ENV DB_NAME wordpress
ENV DB_USER admin
ENV DB_PASS **ChangeMe**

EXPOSE 80
VOLUME ["/app/wp-content"]
CMD ["/run-wordpress.sh"]
