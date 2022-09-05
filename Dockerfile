# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.2

FROM renovate/buildpack:6@sha256:284322089f964f89d3f6b448ff2fc7158767f24e7f0b4efe1fd6d1c6749b5fd8

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
