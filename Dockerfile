FROM node:latest@sha256:e96bb23d6ba66e6e2913f72207de972e3f36ee5c5ce77966016192e59277a73a

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
