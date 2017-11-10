FROM whitecat29/apline-elixir-phoenix:latest
MAINTAINER William Tran <chitran.whitecat@gmail.com>

ENV TERM=xterm

RUN apk add --update --no-cache \
    automake \
    bzip2 \
    bzip2-dev \
    curl-dev \
    db-dev \
    dpkg \
    dpkg-dev \
    file \
    g++ \
    gcc \
    gdbm-dev \
    geoip-dev \
    libxml2 \
    libxslt \
    bash \
    python \
    build-essential \
    libgcc libstdc++ libx11 glib-dev libxrender libxext libintl \
    libcrypto1.0 libssl1.0 \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family \
    rm -rf /var/cache/apk/*
    
COPY wkhtmltopdf /usr/bin

WORKDIR /opt/app

CMD ["/bin/sh"]
