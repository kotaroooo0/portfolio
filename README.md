GCE debian9 で本番環境構築

```
$ apt-get install curl
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
$ systemctl start docker
```

```
$ apt-get install git
$ git clone https://github.com/kotaroooo0/portfolio.git
```

```
$ docker build ./ -t portfolio_alpine_nginx
$ docker run -p 80:80 -p 443:443 portfolio-https
```
