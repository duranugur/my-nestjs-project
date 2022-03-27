FROM node:14-alpine

WORKDIR /workspace

COPY package.json yarn.lock /workspace/

RUN yarn
#RUN yarn....

COPY . .

RUN yarn build

CMD ["yarn", "start:prod"]
