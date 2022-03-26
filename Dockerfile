FROM node:14-alpine

WORKDIR /workspace

COPY package.json yarn.lock /workspace/

RUN yarn

COPY . .

RUN yarn build

CMD ["yarn", "start:prod"]

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
