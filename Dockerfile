# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.2

FROM renovate/buildpack:5-swift@sha256:cd394babf6781b3812a72c851f158a0da4d5f2522a3cb60d99d5778df9672de3

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
