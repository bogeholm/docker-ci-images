#! /bin/bash
set -ex

DOCKERID=${DOCKERID:-bogeholm}
IMAGENAME=${IMAGENAME:-python-datascience}
IMAGETAG=${IMAGETAG:-latest}

docker build --tag "${DOCKERID}/${IMAGENAME}:${IMAGETAG}" --file python.Dockerfile .

# Run LaTeX / Matplotlib test
docker run --rm -it "${DOCKERID}/${IMAGENAME}:${IMAGETAG}" python matplotlib-latex-test.py

# Print versions
docker run --rm "${DOCKERID}/${IMAGENAME}:${IMAGETAG}"

docker push "${DOCKERID}/${IMAGENAME}:${IMAGETAG}"
