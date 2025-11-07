# build stage
FROM node:16 as build-stage
WORKDIR /app
COPY package*.json ./
COPY . .
RUN yarn install --ignore-engines
RUN yarn build:web

# production stage
FROM node:16 as production-stage
WORKDIR /app
COPY --from=build-stage /app/dist/web ./dist/web
COPY --from=build-stage /app/node_modules ./node_modules
COPY --from=build-stage /app/package.json .
COPY --from=build-stage /app/server.js .
EXPOSE 8080
CMD ["yarn", "start:web"]
