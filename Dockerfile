FROM alpine:3.13.5

RUN apk add --no-cache wget

ARG TARGETPLATFORM=linux/test
ARG DUPLICACY_VERSION=2.7.2

RUN \
  if [ "$TARGETPLATFORM" == "linux/arm64" ]; then \
    DUPLICACY_PLATFORM="linux_arm64"; \
  elif [[ "$TARGETPLATFORM" == "linux/arm/"* ]]; then \
    DUPLICACY_PLATFORM="linux_arm"; \
  elif [ "$TARGETPLATFORM" == "linux/386" ]; then \
    DUPLICACY_PLATFORM="linux_i386"; \
  else \
    DUPLICACY_PLATFORM="linux_x64"; \
  fi; \
  wget -O /usr/local/bin/duplicacy "https://github.com/gilbertchen/duplicacy/releases/download/v${DUPLICACY_VERSION}/duplicacy_${DUPLICACY_PLATFORM}_${DUPLICACY_VERSION}" \
  && chmod +x /usr/local/bin/duplicacy

WORKDIR /duplicacy

ENTRYPOINT ["duplicacy"]
