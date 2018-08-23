FROM node
COPY . /
WORKDIR /
RUN npm install
EXPOSE 80
CMD cp /resolv.conf /etc/resolv.conf && node server.js