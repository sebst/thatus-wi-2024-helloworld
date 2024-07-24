# Dockerfile
FROM ubuntu:24.04

ENV TZ=UTC
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    tar \
    dpkg \
    && rm -rf /var/lib/apt/lists/*

COPY . /src
WORKDIR /src

RUN mkdir -p build && cd build && \
    cmake .. && \
    cmake --build . --target install

# Create the source archive
# RUN tar -czvf helloworld-${VERSION}-source.tgz /src

# Create the Debian package
RUN mkdir -p /pkg/DEBIAN && \
    echo "Package: helloworld\nVersion: ${VERSION}\nSection: base\nPriority: optional\nArchitecture: amd64\nDepends: \nMaintainer: Your Name <you@example.com>\nDescription: A hello-world program" > /pkg/DEBIAN/control && \
    mkdir -p /pkg/usr/bin && \
    cp /src/build/helloworld /pkg/usr/bin/ && \
    dpkg-deb --build /pkg helloworld-${VERSION}.deb
