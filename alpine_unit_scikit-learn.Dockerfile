FROM alpine:latest
LABEL maintainer="brendel.vadim@gmail.com"
ENV LANG C.UTF-8
RUN addgroup -S unit \
	&& adduser -D -S -H -s /sbin/nologin -G unit unit \
    && apk add --update --virtual .build-deps build-base python3-dev py3-pip lapack-dev gfortran freetype-dev libpng-dev cython\
    && apk update && apk upgrade && apk add curl python3 unit unit-openrc unit-python3\
    && pip3 install --upgrade pip setuptools \
    && pip3 install -U scikit-learn \
    && apk del .build-deps \
    && ln -sf /dev/stdout /var/log/unit.log
STOPSIGNAL SIGTERM