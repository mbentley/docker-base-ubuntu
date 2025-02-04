# STAGE 0: use base image from Docker Hub and upgrade the existing packages
ARG IMAGE_TAG="${IMAGE_TAG:-24.04}"
FROM ubuntu:${IMAGE_TAG} AS base

RUN apt-get update &&\
  DEBIAN_FRONTEND=noninteractive apt-get upgrade -y &&\
  DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y &&\
  rm -rf /var/lib/apt/lists/*

# STAGE 1: copy contents of the original base image to a new image so we don't have overlapping files in layers
FROM scratch
COPY --from=base / /
LABEL maintainer="Matt Bentley <mbentley@mbentley.net>"
CMD ["bash"]
