FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# same with -v /app/node_modules
# VOLUMES ["/app/node_modules"]

VOLUME [ "app/temp", "/app/feedback" ]

CMD ["node", "server.js"]