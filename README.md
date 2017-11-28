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

## Usage

```bash
byoc kubevirt ${GOPATH}/src/kubevirt.io
```

creates _out directory (in current directory) with kubevirt built.
