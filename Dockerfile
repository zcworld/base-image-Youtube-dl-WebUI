FROM alpine:latest
MAINTAINER zcworld <docker@zcworld.net>

ENV GID=1001 UID=1001
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

RUN echo "@commuedge http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
 && apk -U add \
    nginx \
    ffmpeg \
    supervisor \
    tini@commuedge \
    php7-fpm@commuedge \
    php7-curl@commuedge \
    php7-iconv@commuedge \
    php7-xml@commuedge \
    php7-dom@commuedge \
    php7-json@commuedge \
    php7-zlib@commuedge \
    php7-session@commuedge \
    php7 \
    php7-phar \
    gnu-libiconv@testing \
    tar \
    git \
    curl \