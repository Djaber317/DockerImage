FROM node

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json /usr/src/app

RUN npm install -g npm@10.2.4

RUN npm install nodemon --save-dev

COPY . /usr/src/app

EXPOSE 4000

CMD [ "npm", "start" ]

 