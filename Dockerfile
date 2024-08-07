FROM node:latest@sha256:9232a14f67f800a552c7b3df96e4bde75ce066c17a9e966174ef84c627de01c5

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
