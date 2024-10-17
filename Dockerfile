FROM node:latest@sha256:80ef312505a3baedb95061e4f88f4d53bbbdbf797572138cb79bcb13b347efbc

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
