FROM fedora:26

RUN dnf -y install http://resources.ovirt.org/pub/yum-repo/ovirt-release-master.rpm \
    python2-pip && \
    dnf -y clean all

VOLUME /build

ENTRYPOINT cd /build/src/vdsm && \
           dnf install -y `cat automation/check-patch.packages.fc26` && \
           pip install --user tox && \
           ./autogen.sh --system && \ 
           make rpm && \ 
           cp -r ~/rpmbuild/RPMS /build/out
