FROM node:18-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Install n8n
RUN npm install -g n8n

# Create n8n user
RUN useradd -m -s /bin/bash node

USER node
WORKDIR /home/node

# Expose default n8n port (optional for local testing)
EXPOSE 5678