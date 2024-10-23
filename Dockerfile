FROM node:18-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install --quiet

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
