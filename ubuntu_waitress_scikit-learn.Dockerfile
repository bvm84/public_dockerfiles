FROM ubuntu:eoan
LABEL maintainer="brendel.vadim@gmail.com"
RUN apt update && apt install curl libopenblas-dev python3.7 python3-pip gnupg2 -y && \
    pip3 install --upgrade scipy pandas scikit-learn flask flask-restful requests pyjwt waitress
STOPSIGNAL SIGTERM