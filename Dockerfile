# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.0

FROM renovate/buildpack:5-swift@sha256:af15edea794afe8fb3ba7bfd279325e1a830ddbcc478323ef6b33a8dc65af8bc

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
