# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.7.0

FROM renovate/buildpack:6@sha256:11a5e2e0ec2d52d4ccb7ca0e68489fe70089e7e3e221e392d0c69c8e04b45d38

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
