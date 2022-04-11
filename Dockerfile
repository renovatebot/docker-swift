# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.0

FROM renovate/buildpack:6@sha256:d2e548f5f0c79bc433f44280b606f5561fb08cd3aafaf0806b89c1545f6f02b6

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
