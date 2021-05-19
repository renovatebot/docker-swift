# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.0

FROM renovate/buildpack:5-swift@sha256:39d7f871f1d91f51509b3677f5cd1f5211f14786ef5fc3c5631a56a5ac6c56a4

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
