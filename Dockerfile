FROM alpine:3.14.2

RUN apk add --no-cache wget

ARG TARGETPLATFORM
ARG DUPLICACY_VERSION=2.7.2

RUN \
  case $TARGETPLATFORM in \
    "linux/arm64" ) DUPLICACY_PLATFORM="linux_arm64" ;; \
    "linux/arm/"* ) DUPLICACY_PLATFORM="linux_arm" ;; \
    "linux/386" ) DUPLICACY_PLATFORM="linux_i386" ;; \
    * ) DUPLICACY_PLATFORM="linux_x64" ;; \
  esac; \
  wget -q -O /usr/local/bin/duplicacy https://github.com/gilbertchen/duplicacy/releases/download/v${DUPLICACY_VERSION}/duplicacy_${DUPLICACY_PLATFORM}_${DUPLICACY_VERSION} \
  && chmod +x /usr/local/bin/duplicacy

WORKDIR /duplicacy

ENTRYPOINT ["duplicacy"]
