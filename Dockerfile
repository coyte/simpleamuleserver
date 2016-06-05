FROM ubuntu:xenial

RUN apt update
RUN apt install -y amule-daemon supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 4662 4665/udp 50000 50001 1080 4712 4711


CMD ["/usr/bin/supervisord"]

