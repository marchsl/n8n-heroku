FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache bash \
    && ln -sf /bin/bash /bin/sh

USER node