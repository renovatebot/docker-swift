#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=swift versioning=docker
ARG SWIFT_VERSION=5.3.0

FROM renovate/buildpack:2-swift


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-swift-${FLAVOR}

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
