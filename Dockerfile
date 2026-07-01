FROM node:22-alpine

WORKDIR /app

COPY app/ .

RUN ls -la

RUN cat package.json

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]