FROM node:latest@sha256:e8728bfdb4eae8e511cbd5d1d47b8c979a3ed79b6f5d3c201c0fdcc3176a5576

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
