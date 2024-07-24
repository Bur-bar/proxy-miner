FROM node:22-alpine

WORKDIR /opt
ENV TZ=asia/jakarta
COPY package.json /opt

RUN npm install
COPY lib /opt
COPY package-lock.json /opt
COPY config.json /opt
COPY proxy.js /opt
EXPOSE 8888
CMD [ "node", "proxy.js" ]
