# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.0

FROM renovate/buildpack:5-swift@sha256:f22cb3c1cbc3709340e7779c36993240f8d92ac980525c2f4308e93d5edd5519

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
