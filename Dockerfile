FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache bash
WORKDIR /home/node/packages/cli

USER node