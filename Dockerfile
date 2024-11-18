FROM node:latest@sha256:11ea38054c38143aa6682c39205abeaed1c7f0d3a66d25d8b01e129a0c1480ce

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
