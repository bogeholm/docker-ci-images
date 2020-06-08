#! /bin/bash
set -ex

DOCKERID=${DOCKERID:-bogeholm}
IMAGENAME=${IMAGENAME:-python-datascience}
IMAGETAG=${IMAGETAG:-latest}

docker build --tag "${DOCKERID}/${IMAGENAME}:${IMAGETAG}" --file python.Dockerfile .
docker run --rm "${DOCKERID}/${IMAGENAME}:${IMAGETAG}"
docker push "${DOCKERID}/${IMAGENAME}:${IMAGETAG}"
