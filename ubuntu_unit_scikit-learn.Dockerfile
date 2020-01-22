FROM ubuntu:eoan
LABEL maintainer="brendel.vadim@gmail.com"
RUN groupadd unit && useradd -g unit unit && \
    apt update && apt install curl libopenblas-dev python3.7 python3-pip gnupg2 -y && \
    curl -sL https://nginx.org/keys/nginx_signing.key | apt-key add - && \
    echo "deb https://packages.nginx.org/unit/ubuntu/ eoan unit" >> /etc/apt/sources.list.d/unit.list && \
    echo "deb-src https://packages.nginx.org/unit/ubuntu/ eoan unit" >> /etc/apt/sources.list.d/unit.list && \
    apt update && \
    apt install unit -y && \
    apt install unit-dev unit-python3.7 -y && \ 
    pip3 install --upgrade scipy pandas scikit-learn flask flask-restful requests
STOPSIGNAL SIGTERM
