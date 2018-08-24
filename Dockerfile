FROM node:10-alpine
RUN mkdir /code
WORKDIR /code
ADD package.json /code/
RUN npm install
ADD . /code/

# ssh
ENV SSH_PASSWD "root:Docker!"
RUN apk update \
        && apk add dialog && apk add --update bash \
        && apk update \
	&& apk add openssh-server \
	&& echo "$SSH_PASSWD" | chpasswd 

COPY sshd_config /etc/ssh/
COPY init.sh /usr/local/bin/

RUN chmod u+x /usr/local/bin/init.sh
EXPOSE 8000 3000
ENTRYPOINT ["init.sh"]