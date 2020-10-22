#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=swift versioning=regex:^(?<major>\d+)\.(?<minor>\d+)(\.(?<patch>\d+))?$
ARG SWIFT_VERSION=5.3

FROM renovate/buildpack:2-swift@sha256:892159d4501fb298a4e00dca02ef4313b8b70cbbe3499a61aed1c97a69088650


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-swift-${FLAVOR}

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
