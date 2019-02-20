FROM node:10-alpine

ARG MOUNTEBANK_VERSION=1.16.0
EXPOSE 2525
WORKDIR /opt/mb

RUN npm install --global --production \
        mountebank@${MOUNTEBANK_VERSION} \
    && \
    npm cache clean --force

ENTRYPOINT ["mb"]
