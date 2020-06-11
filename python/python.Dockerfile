FROM python:3.7-slim-buster

WORKDIR /usr/src/build

# Matplotlib uses LaTeX to render text
# https://stackoverflow.com/questions/58121461/runtimeerror-failed-to-process-string-with-tex-because-latex-could-not-be-found
# https://stackoverflow.com/questions/11354149/python-unable-to-render-tex-in-matplotlib

# https://github.com/phusion/baseimage-docker/issues/319#issuecomment-272568689
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install --no-install-recommends --yes \
    texlive \
    ghostscript \
    dvipng \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    cm-super \
    && rm -rf /var/lib/apt/lists/*

# https://github.com/phusion/baseimage-docker/issues/319#issuecomment-272568689
ENV DEBIAN_FRONTEND=teletype

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

# Default entrypoint prints versions of some installed packages and exits
COPY install-check.py ./
# versions.sh calls install-check.py
COPY versions.sh ./
CMD ["bash", "versions.sh"]
