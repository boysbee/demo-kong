FROM kong

MAINTAINER nattaporn.c

EXPOSE 8000 8443 8001 7946

ADD nginx_kong.lua /usr/local/share/lua/5.1/kong/templates/nginx_kong.lua

CMD ["kong", "start"]
