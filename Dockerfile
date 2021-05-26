# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.1

FROM renovate/buildpack:5-swift@sha256:8a58881e9c4fda3d7b22db784fffe2dd7c3588c7360918eea0dbb9e89242be40

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
