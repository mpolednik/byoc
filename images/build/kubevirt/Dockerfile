FROM fedora:26

RUN dnf -y install make git golang pkg-config libvirt-devel mercurial && \
    dnf -y clean all

ENV GOPATH=/build PATH=/sbin:/bin:/build/bin

VOLUME /build

ENTRYPOINT go get golang.org/x/tools/cmd/goimports && go get github.com/Masterminds/glide && \
           cd /build/src/kubevirt.io/kubevirt && make sync && make compile && cp -r /build/src/kubevirt.io /build/out
