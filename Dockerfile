FROM node:14-alpine

WORKDIR /workspace

COPY package.json yarn.lock /workspace/

RUN yarn
#RUN yarn lint
#RUN yarn format:check
#RUN yarn test
#RUN yarn test:cov
#RUN yarn test:e2e

COPY . .

RUN yarn build

CMD ["yarn", "start:prod"]
