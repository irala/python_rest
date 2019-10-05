FROM ubuntu:19.04


RUN apt update && apt install -y \
    git \
    gcc \
    g++ \
    coreutils \
    make \
    wget \
    cmake \
    python3.7

ENV PYTHONPATH "${PYTHONPATH}:..:../:../../app"

ADD ./ /app

WORKDIR /app

#CMD "python3.7 -m subfolder.script_sub"