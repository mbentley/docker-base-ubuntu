# mbentley/openj9

This is an image for OpenJ9 (OpenJDK and Eclipse OpenJ9 binaries) for Ubuntu 20.04. This is built from the [ibm-semeru-runtimes](https://hub.docker.com/_/ibm-semeru-runtimes) images but only copies over the Java install + scc cache. These are multi-arch but only for `amd64` and `arm64`. Architecture specific tags are also present (append `-<arch>` to the final image tag).

| Base Image | OpenJ9 Source | Final Image |
| ---------- | ------------- | ----------- |
| `mbentley/ubuntu:20.04` | `ibm-semeru-runtimes:open-17-jre-focal` | `mbentley/openj9:17` |
