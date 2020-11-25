FROM node:alpine

RUN apk add git
RUN printf "#!/bin/sh\ncd root\n\git clone github.com/Schokokex/cloudy_files_botncd /root/cloudy_files_bot\nnpm install\nnpm start" > /root/control.sh && chmod +x /root/control.sh

ENTRYPOINT /root/control.sh
