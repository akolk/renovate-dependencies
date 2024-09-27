FROM node:latest@sha256:5f1c795962b43876b4f35957cb85f362eafbc879312dd8f904e24246aa506f49

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
