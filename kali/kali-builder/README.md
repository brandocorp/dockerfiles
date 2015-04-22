# kali-base

This `Dockerfile` will allow you to create a build container for constructing a kali-base image.

## How to Use This

Build the builder image

```
docker build -t kali-builder .
```

Run the builder image and create a `kali-base.tar.gz` image to import via docker

_Note: This command requires the `--privileged` flag in order to work_


```
docker run --privileged -v "$PWD":/opt/kali-base kali-builder kali-build
```

When the build completes, you should have a `kali-base.tar.gz` image which you can import.

```
cat kali.tar.gz | docker import - kali-base
```
