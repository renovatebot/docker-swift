# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.3.3

FROM renovate/buildpack:4-swift@sha256:6503b101d098772f2756dfba99ddae29d35153b05861cc0405c4d36c46244f2b

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
