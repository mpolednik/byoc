# Bring Your Own (build) Container

## What I Have

* Sources and
* container to build them.

## What I Want

* rsync the sources over to some volume (so we have Go's persistent builds),
* launch the build container and let it do it's job,
* rsync the build artifacts out of the container.

## How It's Done

The build container has a volume mounted at /build, the sources are rsync'd to /build/src and output is rsync'd from /build/out.

## Usage (KubeVirt)

```bash
byoc kubevirt ${GOPATH}/src/kubevirt.io ~/_out
```

creates _out directory (in current directory) with kubevirt built.

To then develop:

```bash
cd ~/_out/kubevirt.io/kubevirt
vagrant up
sed "s/make all DOCKER_TAG=devel//g" cluster/vagrant/sync_build.sh | bash -
```
