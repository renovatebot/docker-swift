# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.2

FROM renovate/buildpack:5@sha256:af1cfb539fe81d30cfdb247069f912c411fcd7fb1b505d86afa4c94f955462a0

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
