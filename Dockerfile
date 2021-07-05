# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.2

FROM renovate/buildpack:5-swift@sha256:17a19bff37438d6fb5a035370ce3ea2fd57f7ab44294900a6f3d8ce10554f48c

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
