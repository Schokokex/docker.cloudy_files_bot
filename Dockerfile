FROM node:alpine

RUN apk add git
RUN printf "#!/bin/sh\\ncd root\\ngit clone https://github.com/Schokokex/cloudy_files_bot || cd cloudy_files_bot && git pull\\ncd /root/cloudy_files_bot\\nnpm install\\nnpm start" > /root/control.sh && chmod +x /root/control.sh

ENTRYPOINT /root/control.sh
