# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.2

FROM renovate/buildpack:6@sha256:476403af74df1783b8ab7d7780ea6e6328e8a78b68b8fd5264ca4e4a0be4b0dc

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
