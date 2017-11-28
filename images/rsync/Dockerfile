FROM fedora:26

RUN dnf install -y rsync

EXPOSE 873

ADD rsyncd.conf /etc/rsyncd.conf

ENTRYPOINT ["/usr/bin/rsync", "--no-detach", "--daemon", "--verbose"]
