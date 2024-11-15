# Use Node.js image
FROM node:lts-alpine

# Set working directory

WORKDIR /scripts
# Copy the 'scripts' directory from the context (project root) into /scripts in the container
COPY scripts /scripts

# Run a script (if needed)
RUN chmod +x script.sh
WORKDIR /app
# Keep the container running (adjust as needed)
CMD tail -f /dev/null
