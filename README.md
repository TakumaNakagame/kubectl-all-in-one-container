# kubectl-all-in-one-container
Includes some packages such as kubectl

## About
This is a container with `kubectl` etc. in order to user multiple Kubernetes environments properly.

By using this, you can easily use multiple environments such as deployment / staging / production.

### Base Image
- ubuntu:18.04

### Package included
If the version is not specified, the latest build time will be installed.

| command | version |
| --- | --- |
| kubectl | v1.22.1 |
| curl | 7.58.0 |
| git | 2.17.1 |
| vim | 8.0.1453 |
| iputils-ping | 20161105 |
| dnsutils | 9.11.3 |

## How to use

### Quick start

To start the container and execute it, run the following command.

```
$ docker run -it kameneko/kubectl-all-in-one:latest bash
```

### Requirements
Install the following components:

- docker
- docker-compose

### How to use basics
```bash
git clone https://github.com/TakumaNakagame/kubectl-all-in-one
cd kubectl-all-in-one
docker-compose up -d
docker-compoes exec kube [zsh | bash]
```

### Working Directory
The `work` directory exists in this repository. It is mounted on the container `/root/`. For example, if you create a directory as `work/foo`, it will be mounted as `/root/foo` on the container.