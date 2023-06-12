FROM node:20.2.0

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm build

COPY . ./

ENV PORT=3000

EXPOSE 3000

CMD ["npm", "start"]