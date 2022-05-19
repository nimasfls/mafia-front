FROM node:lts

WORKDIR /app

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install \
  --prefer-offline \
  --frozen-lockfile \
  --non-interactive \
  --production=false

