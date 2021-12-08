# renovate: datasource=docker depName=swift versioning=loose
ARG SWIFT_VERSION=5.5.1

FROM renovate/buildpack:5@sha256:42e08482fc0d86ad33a08ef9faddcf1cc28f16e25b0e6add1776968274369e1b

ARG SWIFT_VERSION
RUN install-tool swift

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-swift" \
      org.opencontainers.image.version="${SWIFT_VERSION}"

USER 1000
