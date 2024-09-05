FROM node:latest@sha256:99513efaf4fa3fa7b0f35b3bcc194e6da2fe1c0f71107d10b6b106ddace73cfb

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
