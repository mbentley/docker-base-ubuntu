# mbentley/ubuntu

These are docker images based off of official Ubuntu images on Docker Hub.

## Why

The images on Docker Hub are not always updated as regularly as I would like.  They can ship vulnerable libraries/binaries so in order to combat that, I am maintaining my own rebased images.  There are no customizations outside of patching and rebasing the images.

## Tags

The following is a list of multi-arch (`amd64`, `arm64`, `armv7`) tags for each release.

* __Hint__: You can also use the same rebased image tag with `-<arch>` appended (e.g. - `mbentley/ubuntu:latest-amd64`)

| Distro | Base Image | Rebased Image |
| ------ | ---------- | ------------- |
| Ubuntu | `ubuntu:latest`<br>`ubuntu:22.04` | `mbentley/ubuntu:latest`<br>`mbentley/ubuntu:22.04` |
| Ubuntu | `ubuntu:20.04` | `mbentley/ubuntu:20.04` |

## Archived Tags

| Distro | Base Image | Rebased Image |
| ------ | ---------- | ------------- |
| Ubuntu | `ubuntu:18.04` | `mbentley/ubuntu:18.04` |
| Ubuntu | `ubuntu:16.04` | `mbentley/ubuntu:16.04` |

## Re-Building the Images

### Ubuntu

``` bash
for VERSION in 22.04 20.04
do
  docker build --pull --build-arg IMAGE_TAG="${VERSION}" -t "mbentley/ubuntu:${VERSION}" -f Dockerfile.ubuntu .
done
```

## OpenJ9

Also included in this repo is an image for OpenJ9 (OpenJDK and Eclipse OpenJ9 binaries) for Ubuntu 20.04. This is built from the [ibm-semeru-runtimes](https://hub.docker.com/_/ibm-semeru-runtimes) images but only copies over the Java install + scc cache. These are multi-arch but only for `amd64` and `arm64`. Architecture specific tags are also present (append `-<arch>` to the final image tag).

| Base Image | OpenJ9 Source | Final Image |
| ---------- | ------------- | ----------- |
| `mbentley/ubuntu:20.04` | `ibm-semeru-runtimes:open-17-jre-focal` | `mbentley/openj9:17` |
