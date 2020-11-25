FROM node:alpine

RUN apk add git
RUN cd /root && git clone github.com/Schokokex/cloudy_files_bot && cd /root/cloudy_files_bot && npm install
RUN printf "#!/bin/sh\ncd /root/cloudy_files_bot\nnpm install\nnpm start" > /root/control.sh && chmod +x /root/control.sh

ENTRYPOINT /root/control.sh
