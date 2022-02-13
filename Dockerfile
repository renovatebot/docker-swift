# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.3

FROM renovate/buildpack:6@sha256:3f55c68ce0b2ced7cad85eff7d421abf54794c2578bcaefd2323327cf34f2d55

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
