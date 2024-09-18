FROM node:latest@sha256:5f5ffa8c7c7f54948e9eb2eba3e52d988b19d519ac53358f04f3007fcbb16416

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
