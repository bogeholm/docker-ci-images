#! /bin/bash
set -ex

DOCKERID=${DOCKERID:-bogeholm}
IMAGENAME=${IMAGENAME:-mdbook}
IMAGETAG=${IMAGETAG:-latest}
MDBOOK_VERSION=${MDBOOK_VERSION:-0.3.7}

docker build --build-arg MDBOOK_VERSION_ARG=${MDBOOK_VERSION} --tag "${DOCKERID}/${IMAGENAME}:${IMAGETAG}" --file mdbook.Dockerfile .
docker run --rm "${DOCKERID}/${IMAGENAME}:${IMAGETAG}"
docker push "${DOCKERID}/${IMAGENAME}:${IMAGETAG}"
