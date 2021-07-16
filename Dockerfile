# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.2

FROM renovate/buildpack:5-swift@sha256:73733367a9df4e3db39a3a39519454a73df95aa63070845e90bad8c445a1d45e

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
