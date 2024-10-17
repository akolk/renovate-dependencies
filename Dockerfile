FROM node:latest@sha256:12eceafc86e04862a24f9cdbbdbada57fc36644bdc7e0f643e6767866cedeb1c

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
