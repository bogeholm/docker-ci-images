#! /bin/bash
set -ex

docker build --tag bogeholm/mdbook:latest --file mdbook.Dockerfile .
docker run --rm bogeholm/mdbook:latest
docker push bogeholm/mdbook:latest 