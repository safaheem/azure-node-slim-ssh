FROM node
COPY resolv.conf src/resolv.conf
COPY . src/
WORKDIR /src
RUN npm install
EXPOSE 80
CMD node server.js
ENTRYPOINT "startup.sh"