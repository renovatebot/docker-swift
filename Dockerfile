# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.2

FROM renovate/buildpack:6@sha256:01be8ee0eb03159a1a7ca4043f1156b39183c67b8b29bf0695398decd4165ee7

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
