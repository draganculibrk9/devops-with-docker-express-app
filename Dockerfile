FROM node:16.20.2-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm ci && \
    adduser -D appuser && \
    chown appuser .

USER appuser

CMD node index.js