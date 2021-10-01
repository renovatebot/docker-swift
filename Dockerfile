# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.0

FROM renovate/buildpack:5-swift@sha256:6e627afc723035a509d2d3141b16913fdf38caa949095a89f42a2d2a99bca661

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
