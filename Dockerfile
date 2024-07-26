FROM node:latest@sha256:86915971d2ce1548842315fcce7cda0da59319a4dab6b9fc0827e762ef04683a

WORKDIR /app
COPY package.json .
RUN npm install

CMD ["sleep", "infinity"]
