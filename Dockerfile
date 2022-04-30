# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.1

FROM renovate/buildpack:6@sha256:e9cf288c79c27968b94c48679a1b3b6cae42168ba73b18150dda1e590da30bbf

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
