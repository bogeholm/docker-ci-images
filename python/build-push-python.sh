#! /bin/bash
set -ex

docker build --tag bogeholm/python-datascience:latest --file python.Dockerfile .
docker run --rm bogeholm/python-datascience:latest
docker push bogeholm/python-datascience:latest 