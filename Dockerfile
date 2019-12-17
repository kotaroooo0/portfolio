FROM alpine

# nginxのインストール
RUN apk update && \
    apk add --no-cache nginx

# ドキュメントルート
ADD src /portfolio
ADD default.conf /etc/nginx/conf.d/default.conf

# ポート設定
EXPOSE 8000

RUN mkdir -p /run/nginx

# フォアグラウンドでnginx実行
CMD nginx -g "daemon off;"
