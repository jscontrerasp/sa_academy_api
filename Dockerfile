FROM node:carbon-slim
WORKDIR /git/academy-api
COPY package.json /git/academy-api/
RUN npm install
COPY . /git/academy-api/
RUN npm run prepublish
CMD [ "npm", "run", "runServer" ]