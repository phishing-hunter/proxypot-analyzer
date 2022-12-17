FROM ubuntu:focal

RUN apt-get update \ 
    && apt-get upgrade -y \
    && apt-get install -y git python3 python3-dev python3-pip python-is-python3 libpcap-dev build-essential procps schedtool curl cron \
    && pip3 install pcapy-ng \
    && git clone --depth=1 https://github.com/stamparm/maltrail.git /opt/maltrail

COPY ./*.sh /
ENTRYPOINT ["/entrypoint.sh"]
