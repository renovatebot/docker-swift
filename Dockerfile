# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.1

FROM renovate/buildpack:5@sha256:9f2e303076e5758bd4e30be4bd28ecd4ee5b4512deb68cc8887a2ba5c5746919

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
