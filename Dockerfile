FROM python:3.9-slim
MAINTAINER Anthony Oteri <anthony.oteri@gmail.com>

RUN apt update && apt-get install -y ssh sshpass

RUN pip3 install ansible

CMD [ "ansible" ]
