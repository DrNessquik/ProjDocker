FROM owncloud/base:20.04-amd64@sha256:0a701fff9ccd9299f5e6a1ddc4341c930a2db5c025fc79eac3c8311b88db4b71

VOLUME ["/mnt/data"]
EXPOSE 8080

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/usr/bin/owncloud", "server"]

ADD owncloud.tar.bz2 /var/www/

COPY ./overlay /
WORKDIR /var/www/owncloud

RUN find /var/www/owncloud \( \! -user www-data -o \! -group root \) -print0 | xargs -r -0 chown www-data:root && \
  chmod g+w /var/www/owncloud /var/www/owncloud/.htaccess
