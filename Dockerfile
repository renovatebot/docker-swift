# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.3.3

FROM renovate/buildpack:4-swift@sha256:d01ea80f730ba4820341f118488e20fd266b12c96be3be239c1667f0b3f94797

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
