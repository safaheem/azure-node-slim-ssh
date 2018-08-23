FROM node
COPY . src/
WORKDIR /src
RUN npm install
EXPOSE 80
COPY init.sh /usr/local/bin/
RUN chmod u+x /usr/local/bin/init.sh
ENTRYPOINT ["init.sh"]