FROM node:22.20.0

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY . .

ENV PORT=4173
ENV VITE_TEST="DOCKER_ENV"

RUN npm run build


EXPOSE ${PORT}

CMD [  "npm", "run", "preview", "--", "--host", "0.0.0.0" ]