# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.4.2

FROM renovate/buildpack:5-swift@sha256:5c088a393545fc003e3676db79966bfa063396364b3bdad3ddbc28f789bcf56b

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
