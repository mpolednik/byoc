FROM fedora:26

RUN dnf -y install autoconf automake ccache ebtables gcc gettext \
    glusterfs-client lvm2 make parted patch pkg-config scrub sheepdog zfs-fuse && \
    dnf -y clean all

VOLUME /build

ENTRYPOINT cd /build/src/libvirt && \
           make rpm && \
           cp -r ~/rpmbuild/RPMS /build/out
