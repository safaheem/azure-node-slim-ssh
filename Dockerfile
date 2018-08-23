FROM node
COPY . src/
WORKDIR /src
RUN npm install
EXPOSE 80
ENTRYPOINT ["startup.sh"]