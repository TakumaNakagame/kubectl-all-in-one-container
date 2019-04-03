FROM ubuntu:18.04

RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.riken.go.jp/Linux/ubuntu/%g" /etc/apt/sources.list
RUN apt update && \
    apt install -y ca-certificates curl zsh git vim && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl
