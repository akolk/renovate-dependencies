FROM node:latest@sha256:31ee63312ac6d42fc3bc9fe18c592f66cc4558097e4cc98b89de7f3ecc6bf7f2

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
