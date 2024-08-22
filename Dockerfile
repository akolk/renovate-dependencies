FROM node:latest@sha256:9040a7ed47e5b4736c0e3364462d0b2020b19a23768534e786d00c1ee9169399

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
