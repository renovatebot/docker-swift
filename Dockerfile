# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.0

FROM renovate/buildpack:5-swift@sha256:b544b934622d7f2da00abab55f9014d8e39a05ee86ab7687ea076f375718be23

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
