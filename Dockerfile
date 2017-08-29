FROM node_pm2
RUN mkdir -p /home/app
WORKDIR /home/app
ADD . .
RUN npm install
EXPOSE 6666
CMD ["pm2","start", "index.js", "--no-daemon"]
