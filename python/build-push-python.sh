#! /bin/zsh
docker build --tag bogeholm/python-datascience:latest --file python.Dockerfile .
docker push bogeholm/python-datascience:latest 