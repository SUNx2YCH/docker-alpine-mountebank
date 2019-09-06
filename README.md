# docker-alpine-mountebank

Small [Mountebank](http://www.mbtest.org/) images based on [Alpine Linux](https://alpinelinux.org/)

## Features

* ~60 MB size
* Alpine Linux 3.10
* Node.js 10.x (LTS)
* non-root user (`1000:1000`)

## Usage

```yaml
services:
  mountebank:
    image: sunx2ych/mountebank:2.0.0-alpine
    expose:
      - 8080  # mock port
    volumes:
      - ./mocks/imposters.ejs:/home/node/imposters.ejs:ro
    command: --allowInjection --configfile imposters.ejs
```
