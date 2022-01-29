# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.2

FROM renovate/buildpack:6@sha256:c3d5d461cf1d9ad59814d308562b7fa879c23b00e709d672830a4fac69a0fca0

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
