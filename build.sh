#!/bin/bash

#IMAGE_DIR="build-image"
#CONTEXT_SRC_DIR="${IMAGE_DIR}/src"
## https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
#SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#IMAGE_NAME="kubevirt/builder:latest"
#
#rm -rf "${SCRIPT_DIR}/${CONTEXT_SRC_DIR}"
#cp -r "${GOPATH}/src/kubevirt.io" "${SCRIPT_DIR}/${CONTEXT_SRC_DIR}/kubevirt.io"
#docker build -t ${IMAGE_NAME} "$SCRIPT_DIR/$IMAGE_DIR"
#docker run --privileged=true --rm -iv "${SCRIPT_DIR}/output:/go/output" $IMAGE_NAME sh -c "cp -r /go/src/kubevirt.io/kubevirt/ /go/output"


# Build the rsync image,
docker volume create kubevirt
docker build -t byoc/rsync:latest rsync/
docker run -d -v kubevirt:/vol/src -p 10873:873 byoc/rsync:latest
