FROM openresty/openresty:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /usr/sbin/entrypoint.sh

RUN chmod +x /usr/sbin/entrypoint.sh

ENV UPSTREAM http://example.com
ENV PORT 8080

ENTRYPOINT ["/bin/sh", "/usr/sbin/entrypoint.sh"]
