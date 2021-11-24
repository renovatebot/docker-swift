# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.1

FROM renovate/buildpack:5@sha256:133a7bb0d8b622bfb9c4651de16c29ce05631ada1436988ed2a3bea78b37eb63

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
