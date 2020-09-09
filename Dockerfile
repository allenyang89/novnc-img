## Custom Dockerfile
FROM consol/ubuntu-xfce-vnc

ENV REFRESHED_AT 2020-09-09

USER 0

RUN apt-get update \
    && apt-get remove -y firefox \
    && apt-get upgrade -y \
    && apt-get install -y mysql-client \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:ubuntu-mozilla-security/ppa -y \
    && apt-get update -y \
    && apt-get install -y firefox \
    && apt-get clean -y \
    && apt-get autoclean -y 