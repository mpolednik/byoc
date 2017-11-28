FROM fedora:26

RUN dnf -y install make git golang pkg-config libvirt-devel && \
    dnf -y clean all

ENV GOPATH=/build PATH=/sbin:/bin:/build/bin

VOLUME /build

ENTRYPOINT cd /build/src/kubevirt.io/kubevirt && make compile && cp -r /build/src/kubevirt.io /build/out
