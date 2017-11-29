FROM fedora:26

RUN dnf -y install make git golang pkg-config libvirt-devel && \
    dnf -y clean all

ENV GOPATH=/build PATH=/sbin:/bin:/build/bin

RUN mkdir -p /build/bin
VOLUME /build

RUN go get golang.org/x/tools/cmd/goimports && \
    go get github.com/Masterminds/glide

ENTRYPOINT cd /build/src/kubevirt.io/kubevirt && make test 2>&1
