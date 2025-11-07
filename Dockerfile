# --- Build Stage ---
# Creates a build of the static assets
FROM node:16 as build-stage
WORKDIR /app

# Copy package files and install all dependencies (including dev)
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of the application source code
COPY . .
# Build the web application
RUN yarn build:web

# --- Production Stage ---
# Sets up the final image to run the server
FROM node:16 as production-stage
WORKDIR /app

# Copy only the necessary files from the build stage
COPY --from=build-stage /app/package.json ./package.json
COPY --from=build-stage /app/yarn.lock ./yarn.lock
COPY --from=build-stage /app/server.js ./server.js
COPY --from=build-stage /app/dist/web ./dist/web

# Install ONLY production dependencies
RUN yarn install --production

# Expose the port the server runs on
EXPOSE 8080

# The command to run the application
CMD ["node", "server.js"]
