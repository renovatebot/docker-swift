# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.1

FROM renovate/buildpack:6@sha256:e79441299892e39d6ec319ae91947d633312c4318c3ce105bf439b72308a6d41

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
