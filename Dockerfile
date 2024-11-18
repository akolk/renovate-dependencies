FROM node:latest@sha256:c65ab339c494443a7d2ed36140674bc8815f7100b0d4cebfe0144ce35267a693

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
