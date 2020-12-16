#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=swift versioning=regex:^(?<major>\d+)\.(?<minor>\d+)(\.(?<patch>\d+))?$
ARG SWIFT_VERSION=5.3

FROM renovate/buildpack:2-swift@sha256:265109fdcfa13e5c858f1e535b449ece151be79e5bd8547bbcbce5f7905f0503


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-swift-${FLAVOR}

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
