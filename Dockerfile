FROM alpine:3.17.1

RUN apk add --no-cache wget

ARG TARGETPLATFORM
ARG DUPLICACY_VERSION=v3.1.0

RUN \
  case $TARGETPLATFORM in \
    "linux/arm64" ) DUPLICACY_PLATFORM="linux_arm64" ;; \
    "linux/arm/"* ) DUPLICACY_PLATFORM="linux_arm" ;; \
    "linux/386" ) DUPLICACY_PLATFORM="linux_i386" ;; \
    * ) DUPLICACY_PLATFORM="linux_x64" ;; \
  esac; \
  wget -q -O /usr/local/bin/duplicacy https://github.com/gilbertchen/duplicacy/releases/download/${DUPLICACY_VERSION}/duplicacy_${DUPLICACY_PLATFORM}_${DUPLICACY_VERSION:1} \
  && chmod +x /usr/local/bin/duplicacy

WORKDIR /duplicacy

ENTRYPOINT ["duplicacy"]
