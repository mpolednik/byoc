# Bring Your Own (build) Container

## What I Have

sources
container to build them

## What I Want

* rsync the sources over to some volume (so we have Go's persistent builds)
* launch the build container and let it do it's job
* rsync the build artifacts out of the container

## How It's Done

The build container has a volume mounted at /vol, the sources are rsync'd to /vol/src and output is rsync'd from /vol/out.
