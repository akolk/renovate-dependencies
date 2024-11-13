FROM node:latest@sha256:49d21f58fed2e7a3c045bd51e5252a21a809365448100a1114bfc9ed16edb4e9

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
