FROM node:14-alpine

WORKDIR /workspace

COPY package.json yarn.lock /workspace/

RUN yarn
RUN yarn test:cov

COPY . .

RUN yarn build

CMD ["yarn", "start:prod"]
