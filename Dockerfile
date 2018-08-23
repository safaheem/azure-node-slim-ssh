FROM node
COPY . /
WORKDIR /
RUN npm install
EXPOSE 80
RUN chmod u+x /init.sh