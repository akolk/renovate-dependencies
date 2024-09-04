FROM node:latest@sha256:8ec02324cb37718197de92e51677781be9f1345c709f31a1f44440c6036d24a2

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
