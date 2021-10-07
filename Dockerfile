FROM python:3.9-slim
MAINTAINER Anthony Oteri <anthony.oteri@gmail.com>

RUN apt update && apt-get install -y \
    ssh \
    sshpass \
  && rm -rf /var/lib/apt/list/*

RUN pip3 install --no-cache-dir \
    ansible

CMD [ "ansible" ]
