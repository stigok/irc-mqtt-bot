FROM node:6.9.4
WORKDIR /usr/src/app
COPY . /usr/src/app
ENV PATH /usr/src/app/bin:$PATH
HEALTHCHECK --interval=30s --timeout=15s --retries=3 CMD ["npm", "test"]
RUN [ "npm", "install"]
CMD [ "npm", "start"]
