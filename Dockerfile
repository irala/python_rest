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

ENTRYPOINT [ "python3.7","-m","app.subfolder.script_sub" ]