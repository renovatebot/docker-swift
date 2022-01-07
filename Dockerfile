# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.2

FROM renovate/buildpack:5@sha256:a21d804488fc6c06d421aba67a1c8793e9a5cb2e43ca8fa4557accbb10692917

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
