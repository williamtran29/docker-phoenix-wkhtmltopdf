FROM whitecat29/apline-elixir-phoenix:latest
MAINTAINER William Tran <chitran.whitecat@gmail.com>

ENV TERM=xterm

RUN apk add --update --no-cache \
    libgcc libstdc++ libx11 glib libxrender libxext libintl \
    libcrypto1.0 libssl1.0 \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family

COPY wkhtmltopdf /usr/bin

WORKDIR /opt/app

CMD ["/bin/sh"]
