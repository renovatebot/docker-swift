# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.0

FROM renovate/buildpack:5-swift@sha256:97b1e481a3dc70543f05f65598a8b5adecb945150d5f21c97c56c94dd88028f2

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
