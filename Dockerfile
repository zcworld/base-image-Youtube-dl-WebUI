FROM alpine:3.3
MAINTAINER Barra <docker@zcworld.net>

ENV DOKUWIKI_VERSION 2016-06-26
ENV GID=1001 UID=1001

RUN echo "@commuedge http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
 && apk -U add \
    nginx \
    supervisor \
    tini@commuedge \
    php7-fpm@testing \
    php7-curl@testing \
    php7-iconv@testing \
    php7-xml@testing \
    php7-dom@testing \
    php7-openssl@testing \
    php7-json@testing \
    php7-zlib@testing \
    php7-pdo_mysql@testing \
    php7-pdo_sqlite@testing \
    php7-sqlite3@testing \
    php7-session@testing \
    tar \
    git \