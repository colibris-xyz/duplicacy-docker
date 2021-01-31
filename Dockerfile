FROM alpine:3.13.1

RUN apk add --no-cache wget

ARG DUPLICACY_VERSION=2.7.2

RUN wget -q -O /usr/local/bin/duplicacy \
  https://github.com/gilbertchen/duplicacy/releases/download/v${DUPLICACY_VERSION}/duplicacy_linux_x64_${DUPLICACY_VERSION} \
  && chmod +x /usr/local/bin/duplicacy

WORKDIR /duplicacy

ENTRYPOINT ["duplicacy"]
