# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.7.0

FROM renovate/buildpack:6@sha256:0408248ee016ddbb2345a54f54088fecfe30d30c15f96b7a429a395b2139f737

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
