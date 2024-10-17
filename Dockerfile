FROM node:latest@sha256:e643c0b70dca9704dff42e12b17f5b719dbe4f95e6392fc2dfa0c5f02ea8044d

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
