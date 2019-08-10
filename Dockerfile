FROM node:10.16.0
WORKDIR /app
COPY package.json .
RUN npm i -g npm@6.10.0
RUN npm i
CMD npm start
