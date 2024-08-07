FROM node:latest@sha256:9af5094228463dc940710adc371f5fa56ee384e5aefe0608b103d778be07951c

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
