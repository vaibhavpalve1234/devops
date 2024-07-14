FROM node:alpine

WORKDIR /nodejs

ENV LOG_LEVEL=debug
 
COPY ./nodejs/package*.json ./
 
RUN npm install --omit=dev
 
COPY ./nodejs/ ./
 
CMD [ "node", "index.js" ]