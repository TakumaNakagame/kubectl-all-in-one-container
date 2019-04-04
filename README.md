# kubectl-all-in-one-container
Includes some packages such as kubectl

## このイメージについて
### About
これは、複数のKubernetes環境を使い分けるために、`kubectl`などをコンテナにしたものです。

これを利用することで、開発/ステージング/本番など複数の環境を簡単に使い分けることができます。

### ベースイメージ
- ubuntu:18.04

### 含まれているパッケージ
このイメージには次のパッケージが含まれています。バージョンが指定されていないものについては、ビルド時の最新がインストールされます。

- kubectl
- curl
- zsh
- git
- vim
- iputils-ping
- dnsutils

## 使い方
### 要件
次のコンポーネントをインストールしておいてください。

- docker
- docker-compose

### 基本の使い方
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
**次のコマンドだけは「コマンドプロンプト」から実行してください。**
docker-compose up -d
```

次のコマンドはコマンドプロンプトもしくはWSL、PowerShellなどの任意のシェルを利用可能です。
```bash
docker-compose exec kube [zsh | bash]
```

##### ※コマンドプロンプトを利用する理由
WSLは非常に有用な機能ですが、WSLを経由してホストのディレクトリをDockerコンテナにマウントすることができません(`docker-compose up -d`のところ)。これは、コマンドプロンプトを利用することで回避できます。


### ディレクトリ
このリポジトリには、`work`ディレクトリが存在しています。これは、`/root/`にマウントされます。例えば、`work/hoge`としてディレクトリを作成した場合は、コンテナ上では`/root/hoge`としてマウントされます。
