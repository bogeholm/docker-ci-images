FROM debian:buster-slim

RUN apt-get update \
    && apt-get install --no-install-recommends --yes \
    apt-utils \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ENV MDBOOK_VERSION=0.3.7

RUN mkdir downloads \
    && cd downloads \
    && curl -L "https://github.com/rust-lang/mdBook/releases/download/v${MDBOOK_VERSION}/mdbook-v${MDBOOK_VERSION}-x86_64-unknown-linux-gnu.tar.gz" | tar -xz \
    && mv mdbook /usr/local/bin/mdbook \
    && cd .. \
    && rm -rf downloads

RUN echo "$(mdbook --version)"