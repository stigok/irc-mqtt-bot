FROM node:6-alpine

WORKDIR /usr/src/app
COPY . .
ENV PATH /usr/src/app/bin:$PATH
RUN [ "npm", "install"]
CMD [ "npm", "start"]
