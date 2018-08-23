FROM node
COPY info.php /etc/
COPY . src/
WORKDIR /src
RUN npm install
EXPOSE 80
CMD node server.js