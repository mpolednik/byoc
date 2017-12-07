FROM fedora:26

RUN dnf -y install autoconf automake ccache ebtables gcc gettext git libtool gettext-devel libxslt libnl3-devel libxml2-devel device-mapper-devel libpciaccess-devel python \
    glusterfs-client lvm2 make parted patch pkg-config scrub sheepdog zfs-fuse rpm-build \
    audit-libs-devel augeas avahi-devel cyrus-sasl-devel dbus-devel dnsmasq fuse-devel glusterfs-api-devel \
    glusterfs-devel gnutls-devel iptables iscsi-initiator-utils libacl-devel libattr-devel libblkid-devel \
    libcap-ng-devel libcurl-devel libpcap-devel librados2-devel librbd1-devel libssh-devel libssh2-devel \
    libtasn1-devel libwsman-devel ncurses-devel netcf-devel nfs-utils numactl-devel numad parted-devel \
    polkit polkit-devel radvd readline-devel sanlock-devel systemtap-sdt-devel wireshark-devel xen-devel yajl-devel qemu-img && \
    dnf -y clean all

VOLUME /build

ENTRYPOINT cd /build/src/libvirt && \
           ./autogen.sh --system && make rpm && \
           cp -r ~/rpmbuild/RPMS /build/out
