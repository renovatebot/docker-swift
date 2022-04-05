# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.0

FROM renovate/buildpack:6@sha256:1cb5313d17e2916ccb4694c268ae4941fa26fab832a53c7036538ad17b37580f

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
