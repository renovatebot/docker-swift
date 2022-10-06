# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.7.0

FROM renovate/buildpack:6@sha256:359d7d64a7abcf67de2e0ae60de5372ab6da5eee1dcbb52c5d93187e1fff3796

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
