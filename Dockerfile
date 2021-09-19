FROM node:16.9.1-slim

WORKDIR /app
COPY package.json /app
RUN npm install --only=production --no-optional

COPY . /app
ENTRYPOINT [ "node" ]
CMD [ "index.js" ]
