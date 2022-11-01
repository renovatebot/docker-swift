# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.7.0

FROM renovate/buildpack:6@sha256:65ee024ee28dff3d3767ee9e042fb9fba70b18a6d39e82105a4d77538ada3eed

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
