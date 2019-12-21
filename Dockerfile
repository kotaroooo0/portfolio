FROM steveltn/https-portal:1

EXPOSE 80 443

ENV STAGE "production"
ENV DOMAINS www.kotaroooo0.com

ADD src /var/www/vhosts/www.kotaroooo0.com/
