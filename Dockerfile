FROM nikolaik/python-nodejs:latest
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . ./
RUN node db.js
CMD ["npm","run","start"]
