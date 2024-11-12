FROM node:latest@sha256:99c5f40071f14c686b62d108a440aed65b786b8c928eb885ca16ca5685e5e33a

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
