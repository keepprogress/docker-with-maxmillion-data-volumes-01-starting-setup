FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ENV PORT 80

EXPOSE $PORT

# same with -v /app/node_modules
# VOLUMES ["/app/node_modules"]

# VOLUME [ "app/temp", "/app/feedback" ]

CMD [ "npm", "start"]