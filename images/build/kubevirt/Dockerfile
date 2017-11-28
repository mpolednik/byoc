FROM fedora:26

RUN dnf -y install make git golang pkg-config libvirt-devel && \
    dnf -y clean all

ENV GOPATH=/vol PATH=/sbin:/bin:/vol/bin

ENTRYPOINT ["cd", "/vol/src/kubevirt.io/kubevirt", "&&", "make", "compile"]
