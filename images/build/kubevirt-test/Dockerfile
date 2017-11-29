FROM fedora:26

RUN dnf -y install make git golang pkg-config libvirt-devel mercurial && \
    dnf -y clean all

RUN mkdir -p /build/bin
VOLUME /build

ENV GOPATH=/build PATH=/sbin:/bin:/build/bin

ENTRYPOINT go get golang.org/x/tools/cmd/goimports && go get github.com/Masterminds/glide && cd /build/src/kubevirt.io/kubevirt && make test | tee /build/out/log
