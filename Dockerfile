FROM node:latest@sha256:7cbc7e41c78f055826a9e2498ecac951fdbc1b0cc3b5d70e7ee5d57189a9de41

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
