FROM node
COPY resolv.conf /etc/resolv.conf
COPY . src/
WORKDIR /src
RUN npm install
EXPOSE 80
CMD node server.js