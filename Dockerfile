FROM node:latest@sha256:bd00c03095f7586432805dbf7989be10361d27987f93de904b1fc003949a4794

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
