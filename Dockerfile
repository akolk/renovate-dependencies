FROM node:latest@sha256:54b7a9a6bb4ebfb623b5163581426b83f0ab39292e4df2c808ace95ab4cba94f

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
