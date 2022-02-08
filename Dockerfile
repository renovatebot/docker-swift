# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.2

FROM renovate/buildpack:6@sha256:1df53e40e1c148a5cdccc1443f09de9d1069aec47b783f5c872dafbc7d25737d

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
