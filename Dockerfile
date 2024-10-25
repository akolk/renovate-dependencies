FROM node:latest@sha256:a1abef164c8b55f9aa6350e2c3eaa37e9dafb7e48a06090cb4e2170cc5639d96

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
