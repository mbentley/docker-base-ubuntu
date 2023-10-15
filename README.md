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
