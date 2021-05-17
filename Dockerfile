# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.0

FROM renovate/buildpack:5-swift@sha256:aac0de947b1e0b55cd6b13918f1e3e0f01e12d0a9cc3223c042a71ee55206b08

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
