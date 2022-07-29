FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "server.js", "./"]


RUN npm install --production

# Bundle app source
COPY . .

ENTRYPOINT [ "node", "server.js" ]