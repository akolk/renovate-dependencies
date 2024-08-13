FROM node:latest@sha256:27649827e47190ea8c7db5601a980abcaf5b7e2d66a2a186856ddd36c8dde5b5

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
