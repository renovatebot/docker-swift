# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.2

FROM renovate/buildpack:6@sha256:c8c86ece7d8cedf807495a587b03f5acfe1c054d115dcee65df114b11860b684

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
