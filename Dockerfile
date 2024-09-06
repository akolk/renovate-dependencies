FROM node:latest@sha256:c6add15c26b86f1ad3f43c8339cf04da4b01984b6b348d9879f9509049381252

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
