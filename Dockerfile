FROM n8nio/n8n:latest

USER root

# 1. Create the nodes directory in the n8n user home
RUN mkdir -p /home/node/.n8n/nodes

# 2. Install the Zalo nodes into that directory
WORKDIR /home/node/.n8n/nodes
RUN npm init -y && npm install n8n-nodes-zalo-ca-nhan

# 3. Ensure the node user owns the directory
RUN chown -R node:node /home/node/.n8n

# 4. Switch back to the node user
USER node
WORKDIR /home/node
