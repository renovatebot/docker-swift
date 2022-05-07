# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.1

FROM renovate/buildpack:6@sha256:da38140d4f078d577019700c38c9c4471c0947c5b0c91eee352a84252c4bc114

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
