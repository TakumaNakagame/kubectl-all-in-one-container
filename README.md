# kubectl-all-in-one-container
Includes some packages such as kubectl

## About
This is a container with `kubectl` etc. in order to user multiple Kubernetes environments properly.

By using this, you can easily use multiple environments such as deployment / staging / production.

### Base Image
- ubuntu:18.04

### Package included
If the version is not specified, the latest build time will be installed.

- kubectl
- curl
- zsh
- git
- vim
- iputils-ping
- dnsutils

## How to use
### Requirements
Install the following components:

- docker
- docker-compose

### How to use basics
#### Linux/Mac
```bash
git clone https://github.com/TakumaNakagame/kubectl-all-in-one
cd kubectl-all-in-one
docker-compose up -d
docker-compoes exec kube [zsh | bash]
```

#### Windows
```bash
git clone https://github.com/TakumaNakagame/kubectl-all-in-one
cd kubectl-all-in-one
docker-compose build
```

```bash
**Please execute only the following commands from the "command prompt".**
docker-compose up -d
```

```bash
docker-compose exec kube [zsh | bash]
```

##### ※Reason for using command prompt
WSL is a very useful feature, but you can not mount host directories on Docker containers via WSL(at `docker-compose up -d`). This can be avoided by using the command prompt.

### Working Directory
The `work` directory exists in this repository. It is mounted on the container `/root/`. For example, if you create a directory as `work/foo`, it will be mounted as `/root/foo` on the container.