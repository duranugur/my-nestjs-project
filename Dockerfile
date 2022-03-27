FROM node:14-alpine

WORKDIR /workspace

COPY package.json yarn.lock /workspace/

RUN yarn
##RUN DELETE

COPY . .

RUN yarn build
CMD ["yarn", "yarn:format:check"]
CMD ["yarn", "start:prod"]
