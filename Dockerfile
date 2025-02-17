FROM node:16
WORKDIR /app
EXPOSE 8080
COPY package.json package-lock.json parkings.json ./

RUN npm install

COPY . ./

CMD ["npm", "start"]
