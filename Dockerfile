FROM node:slim

LABEL jessica <jessicaclasson4@gmail.com>

WORKDIR /app

#copy code, install npm dep
COPY index.js /app/index.js
COPY package.json /app/package.json
RUN npm install
EXPOSE 3000
ENTRYPOINT node index.js