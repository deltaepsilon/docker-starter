FROM mhart/alpine-node:8

WORKDIR /app/functions
COPY ./app/functions/package.json /app/functions/package.json
COPY ./app/functions/yarn.lock /app/functions/yarn.lock
RUN yarn

WORKDIR /app
COPY ./app/package.json /app/package.json
COPY ./app/yarn.lock /app/yarn.lock
RUN yarn

COPY ./app /app
