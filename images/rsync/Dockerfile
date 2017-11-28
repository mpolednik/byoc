FROM fedora:26

RUN dnf install -y rsync

EXPOSE 873

ADD rsyncd.conf /etc/rsyncd.conf

RUN mkdir -p /build/src && \
    mkdir -p /build/out

VOLUME /build

ENTRYPOINT ["/usr/bin/rsync", "--no-detach", "--daemon", "--verbose"]
