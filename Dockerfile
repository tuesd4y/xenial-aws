FROM ubuntu:xenial

LABEL \
  maintainer="Chris Stelzmüller <chris@tuesd4y.com>" \
  org.opencontainers.image.title="xenial-aws" \
  org.opencontainers.image.description="AWS CLI SDK on Ubuntu Xenial Docker image." \
  org.opencontainers.image.authors="Chris Stelzmüller <chris@tuesd4y.com>" \
  org.opencontainers.image.url="https://github.com/tuesd4y/xenial-aws" \
  org.opencontainers.image.vendor="https://tuesd4y.com" \
  org.opencontainers.image.licenses="MIT"

# Let the container know that there is no TTY
ARG DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get -y update && \
  apt-get install -y -qq --no-install-recommends \
    curl \
    awscli \
    ca-certificates && apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /tmp/* /var/tmp/*
