#! /bin/zsh
docker build --tag bogeholm/mdbook:latest --file mdbook.Dockerfile .
docker push bogeholm/mdbook:latest 