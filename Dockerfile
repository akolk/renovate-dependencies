FROM node:latest@sha256:70496489fde14a2803b1eb356bea754cf8991c1628fe1b0233fdd78028ed32a7

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
