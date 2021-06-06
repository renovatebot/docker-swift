# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.1

FROM renovate/buildpack:5-swift@sha256:39b77b29a37cfca1764cf2406c48857366f271284ac419a8a88eca41aaeed463

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
