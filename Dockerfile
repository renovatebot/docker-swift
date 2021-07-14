# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.2

FROM renovate/buildpack:5-swift@sha256:ae09017b806d30b50efd4ddf6b41e2f1047f1948b97a35fe03e94d0a7c5ddf1f

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
