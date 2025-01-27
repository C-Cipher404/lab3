FROM node:latest

LABEL maintainer="Cortney Anderson <cortney.anderson4873@stu.mtec.edu>"
LABEL description="This is a simple docker file to demonstrate a Node.js application."
LABEL cohort = "cohort-19"

WORKDIR /app

COPY . .

EXPOSE 8080/tcp

RUN npm install

CMD [ "node", "app.js" ]


