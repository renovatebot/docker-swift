# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.1

FROM renovate/buildpack:6@sha256:ceff8531020887fd47404fb3ed5a5f97de4ddcf32211bab0c1c89824963aac5b

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
