FROM node:6.11.1

USER root
WORKDIR /work
COPY . /work
RUN chown -R node /work

USER node

RUN npm install
CMD [ "start" ]
ENTRYPOINT [ "npm" ]
