# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.2

FROM renovate/buildpack:6@sha256:1922ea7accc3245856ccfed61c2bd37962d510eb6216a86d69ecebc029bfe66b

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
