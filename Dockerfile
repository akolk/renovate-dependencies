FROM node:latest@sha256:b9318f064e05337f029aab1b9056e63f264d51248f513613c79cf1c42829749b

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
