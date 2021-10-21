# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.0

FROM renovate/buildpack:5@sha256:3b1bbce27d7612f261f70552c4cdea6415593c8fe42b7f094a22ead8782ca3ca

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
