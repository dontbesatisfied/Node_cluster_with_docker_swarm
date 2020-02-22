FROM node:12.14-alpine

EXPOSE 3000

RUN apk add --no-cache tini

WORKDIR /usr/workspace

COPY package.json ./

RUN yarn && yarn cache clean --force

COPY --chown=node:node . .

USER node

ENTRYPOINT ["tini", "--"]

CMD ["node", "./bin/www"]