FROM node:latest@sha256:db2ab3844812aac5e7822dd3c8d0112c9561e189818e3aae02805f98616e7f52

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
