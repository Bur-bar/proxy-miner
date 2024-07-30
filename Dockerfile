FROM node:22-alpine

WORKDIR /opt

ENV TZ=asia/jakarta

COPY package.json ./

COPY . .

RUN npm install

EXPOSE 8888

CMD [ "node", "opt/proxy.js" ]
