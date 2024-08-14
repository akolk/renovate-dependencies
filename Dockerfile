FROM node:latest@sha256:914458d8617650599ec2c05f6754403a1ce08cb471b0b1de1de439c539f8d45f

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
