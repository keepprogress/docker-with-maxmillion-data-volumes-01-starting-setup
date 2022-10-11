FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install


## ARG instruction made layer as other instructions which would re-excute other  command after it was changed.

## So, don't put it at the begginning otherwise, the unnecessary npm install will run again.

ARG DEFAULT_PORT=80

COPY . .

EXPOSE 80

# same with -v /app/node_modules
# VOLUMES ["/app/node_modules"]

# VOLUME [ "app/temp", "/app/feedback" ]

CMD [ "npm", "start"]