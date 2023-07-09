FROM node:20.3.1-bookworm-slim

RUN apt-get update && \
	apt-get install -y git

RUN	cd ~/ && git clone https://github.com/Integrity-Ltd/energymeter-utils.git && cd ~/energymeter-utils && npm install

RUN cd ~/ && git clone https://github.com/Integrity-Ltd/energymeter-timed-service.git && cd ~/energymeter-timed-service && npm install

RUN cd ~/ && git clone https://github.com/Integrity-Ltd/energymeter-api.git && cd ~/energymeter-api && npm install

RUN cd ~/ && git clone https://github.com/Integrity-Ltd/energymeter-admin.git && cd ~/energymeter-admin && npm install

COPY start.sh /root/start.sh

ENV NODE_ENV docker

CMD sh /root/start.sh

EXPOSE 8080 3000
