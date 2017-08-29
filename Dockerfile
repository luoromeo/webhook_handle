FROM node-pm2
RUN mkdir -p /home/app
WORKDIR /home/app
ADD . .
EXPOSE 6666
CMD ["pm2","start", "index.js", "--no-daemon"]
