FROM debian:stretch
LABEL version="1.0.0" \
      maintainer="Mike Dingjan <mike@mikedigjan.nl>" \
      description="Serial to network proxy tailored for DSMR on the Raspberry Pi using ser2net"

RUN apt-get update \
    && apt-get install -y ser2net \
    && rm -rf /var/lib/apt/lists/*

ADD ser2net.conf /etc/ser2net.conf

EXPOSE 3333

ENV TZ Europe/Amsterdam
CMD /usr/sbin/ser2net -d -u
