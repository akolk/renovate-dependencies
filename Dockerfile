FROM node:latest@sha256:121bed24e7be894cb926560d21a9dd857da8fa85f045f69a5b187e412d7b35e5

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
