# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.2

FROM renovate/buildpack:6@sha256:b9ef8950b340054dbcdc3a9c771b4a6ccc6adfd5e99d5014beb8cbdefd9dd269

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
