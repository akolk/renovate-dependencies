FROM node:latest@sha256:a51c6222fa9d7f492f1e756193214dc2620becc8f363c905595081c45399a2f1

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
