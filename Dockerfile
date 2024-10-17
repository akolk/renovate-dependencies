FROM node:latest@sha256:ae445adee67705d7b386f5d9ce0cfc5098ac3d5e638835642d5096883a4f0236

RUN apt-get update && \
    apt-get install -y python3-pandas
    
#RUN pip3 install pandas
WORKDIR /app
COPY package.json config.js parserenovate.py .
RUN npm install -g renovate

CMD ["sleep", "infinity"]
