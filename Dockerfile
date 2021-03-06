FROM node:boron

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/
RUN npm install

COPY . /app

CMD [ "./zenbot.sh", "trade", "--paper" ]
