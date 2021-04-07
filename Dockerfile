# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.3.3

FROM renovate/buildpack:5-swift@sha256:ea25355088bdf4603a4dcdb9384b01fbb5b77b326fe07fbac1d4cb398cece4e0

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
