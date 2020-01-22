FROM alpine:latest
LABEL maintainer="brendel.vadim@gmail.com"
ENV LANG C.UTF-8
RUN addgroup -S unit \
	&& adduser -D -S -H -s /sbin/nologin -G unit unit \
    && apk add --update --virtual .build-deps build-base python3-dev py3-pip gfortran freetype-dev libpng-dev cython\
    && apk update && apk upgrade && apk add curl openblas-dev python3 unit unit-openrc unit-python3\
    && pip3 install --upgrade pip setuptools \
    && pip3 install -U scikit-learn \
    && pip3 install -U pandas \
    && apk del .build-deps
STOPSIGNAL SIGTERM
