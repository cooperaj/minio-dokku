FROM minio/minio

EXPOSE 5000

RUN adduser -D -u 32767 dokku
USER dokku
WORKDIR /home/dokku

ADD ./nginx.conf.sigil /home/dokku

CMD ["server", "--address", ":5000", "/home/dokku/data"]
