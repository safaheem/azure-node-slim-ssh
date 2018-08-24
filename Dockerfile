FROM node
COPY . /
WORKDIR /
RUN npm install
EXPOSE 80
ENTRYPOINT [ "init.sh" ]