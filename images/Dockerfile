FROM fedora:26

RUN dnf -y install make git golang pkg-config libvirt-devel && \
    dnf -y clean all

ADD src /go/src
