#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=swift versioning=regex:^(?<major>\d+)\.(?<minor>\d+)(\.(?<patch>\d+))?$
ARG SWIFT_VERSION=5.3

FROM renovate/buildpack:3-swift@sha256:17b6d65f9f55d12291594e29f36322a5ce2fbe67082b138e84e982e25d8cc75c


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-swift-${FLAVOR}

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
