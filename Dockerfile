FROM webpronl/reveal-md:latest AS base

FROM base as dev
RUN   apk add --no-cache --update git make

FROM base as fin
WORKDIR /www
CMD "node /app/bin/reveal-md.js readme.md --static /www"