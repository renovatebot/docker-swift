# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.3.3

FROM renovate/buildpack:4-swift@sha256:b1b6a52682569a771970e9c2635c68819486dc5b7ffa50c6b5dca9029c9292a5

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
