FROM node:latest@sha256:4d5f1ea97f86073ce02322afd1add0bd5899ac4fa0deec4f7f91229f645da067

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
