GCE debian9 で本番環境構築

```
$ apt-get install curl
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
$ systemctl start docker

$ sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
```

```
$ apt-get install git
$ git clone https://github.com/kotaroooo0/portfolio.git
```

```
$ docker build ./ -t portfolio_alpine_nginx
$ docker run -p 80:80 portfolio_alpine_nginx
```
