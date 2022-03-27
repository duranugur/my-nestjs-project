FROM node:14-alpine

WORKDIR /workspace

COPY package.json yarn.lock /workspace/

RUN yarn

#Run deneme

COPY . .

RUN yarn build

CMD ["yarn", "yarn:lint"]
CMD ["yarn", "yarn:format:check"]
CMD ["yarn", "yarn:test"]
CMD ["yarn", "yarn:test.conv"]
CMD ["yarn", "yarn:e2e"]
CMD ["yarn", "start:prod"]
