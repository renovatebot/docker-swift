# renovate: datasource=docker depName=swift
ARG SWIFT_VERSION=5.3.3

FROM renovate/buildpack:4-swift@sha256:34f3bde5a697e66565224b4abf5eaa0eb9a3d9fecd9aa664f4f47abaa4cd5b3c

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
