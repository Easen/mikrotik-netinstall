FROM alpine

ARG VERSION
ENV VERSION=$VERSION

RUN wget -O /tmp/netinstall.tar.gz https://download.mikrotik.com/routeros/${VERSION}/netinstall-${VERSION}.tar.gz && \
  tar -xvf /tmp/netinstall.tar.gz && \
  rm /tmp/netinstall.tar.gz 

EXPOSE 5000/udp 67/udp 69/udp

ENTRYPOINT [ "/netinstall" ]

