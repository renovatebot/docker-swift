# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.6.1

FROM renovate/buildpack:6@sha256:caa20ff3672cee67fca6a1de14bbe68cec26eef952a70aa4b70978a6b002f56c

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
