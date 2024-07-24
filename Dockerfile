FROM node:22-alpine

WORKDIR /opt
ENV TZ=asia/jakarta
COPY package.json /opt
COPY lib /opt
COPY package-lock.json /opt
COPY config.json /opt
COPY proxy.js /opt
RUN npm install
EXPOSE 8888
CMD [ "node", "proxy.js" ]
