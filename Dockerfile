FROM node:latest@sha256:7b2c1050e3bccd9866230b4e63a88f05683035a998da5cae655bac27168e50b7

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
