FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "server.js", "./"]


RUN npm install --production

# Bundle app source
COPY . .

ENTRYPOINT [ "node", "server.js" ]




#FROM node  
#WORKDIR /root/
#COPY --from=builder /app/ ./
#ENTRYPOINT [ "node", "server.js" ]