FROM node:latest@sha256:7cd3e5023ff80beedbc3bf45ab898d4d95939bdb484477b9e73ec816d18f2f88

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
