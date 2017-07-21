FROM node:6.11.1-alpine

USER root
WORKDIR /work
COPY . /work
RUN chown -R node /work

USER node

RUN npm install
EXPOSE 5000
CMD [ "npm", "start" ]
