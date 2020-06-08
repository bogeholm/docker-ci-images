FROM debian:buster-slim

RUN apt-get update \
    && apt-get install --no-install-recommends --yes \
    apt-utils \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ARG MDBOOK_VERSION_ARG=0.3.7
ENV MDBOOK_VERSION=${MDBOOK_VERSION_ARG}

RUN mkdir downloads \
    && cd downloads \
    && curl -L "https://github.com/rust-lang/mdBook/releases/download/v${MDBOOK_VERSION}/mdbook-v${MDBOOK_VERSION}-x86_64-unknown-linux-gnu.tar.gz" | tar -xz \
    && mv mdbook /usr/local/bin/mdbook \
    && cd .. \
    && rm -rf downloads

CMD ["mdbook", "--version"]
