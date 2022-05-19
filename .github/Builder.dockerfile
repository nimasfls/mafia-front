FROM registry.nimasfl.ir/mafia-front-dep as dependency
FROM node:lts as builder

WORKDIR /app

COPY --from=dependency /app/node_modules /app/node_modules
COPY . .

RUN yarn build

FROM node:lts

WORKDIR /app

COPY --from=builder /app  .

ENV HOST 0.0.0.0
EXPOSE 3000

CMD [ "yarn", "start" ]
