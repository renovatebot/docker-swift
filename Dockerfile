# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.3.3

FROM renovate/buildpack:5-swift@sha256:5143dcb294f90c5292bc6b6806841d162c8ff92195adbd65397e7f727b1c8260

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
