FROM node:latest@sha256:e4ec3891c64348aa8358e36394fc61afae30af4e4cc00f38f84d65f72b758c59

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
