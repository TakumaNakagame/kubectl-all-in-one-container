FROM ubuntu:18.04

RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.riken.go.jp/Linux/ubuntu/%g" /etc/apt/sources.list
RUN apt update && \
    apt upgrade -y && \
    apt install -y ca-certificates curl && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl
RUN apt install -y zsh git vim iputils-ping dnsutils && \
    rm -rf /var/lib/apt/lists/*
