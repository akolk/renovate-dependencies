FROM node:latest@sha256:3e392de472c65b24a11dd1d506cc68f5346af76ac4e78f2ecb6e41f8dbb38361

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
