FROM node:12.2.0-alpine     
"dohwan 입니다sdfasdfsfsdfsdfasdfsadfsdafsdfsfs"
RUN mkdir /app
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app/package.json

RUN npm install --no-cache
RUN npm install -g react-scripts
RUN npm install -g react-router-dom
RUN apk add --no-cache git


COPY . /app
CMD ["npm", "run", "start"]