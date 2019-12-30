# ポートフォリオサイト

## Google Compute Engine(debian9)で本番環境構築

### 1. Google Compute Engine(GCE) のインスタンスを立てる

http と https の port を開放することを忘れずに

### 2. GCE 上に Docker をインストールする

```
$ apt-get install curl
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
$ systemctl start docker
```

### 3. GCE 上に git をインストールする

ローカルのソースコードを GCE 上にコピーする

```
$ apt-get install git
$ git clone https://github.com/kotaroooo0/portfolio.git
```

### 4. GCE 上に Docker で HTTPS な Nginx を立てる

git でクローンしたディレクトリに入りイメージをビルドする

公開したいテンプレート`src`を`/var/www/vhosts/www.kotaroooo0.com/`に配置しコンテナにコピーする(src を変更した場合、変更がそのまま反映されるはず)

証明書をボリュームにマウントしておき永続化する(コンテナを立ち上げるため証明書を取得すると、発行制限がかかる場合がある)

```
$ docker build ./ -t  portfolio-https
$ docker run -v {srcへの絶対パス}:/var/www/vhosts/www.kotaroooo0.com/ -v /data/ssl_certs:/var/lib/https-portal -p 80:80 -p 443:443 portfolio-https
```

もしくは

```
docker-compose up -d
```

### 5(TODO): 自動デプロイ
