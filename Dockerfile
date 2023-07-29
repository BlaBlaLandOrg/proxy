# syntax=docker/dockerfile:1
FROM nginx:alpine

RUN apk add --update certbot certbot-nginx curl

COPY nginx.conf /etc/nginx/nginx.conf
COPY blablaland.conf /etc/nginx/sites-enabled/blablaland.conf
VOLUME /etc/nginx/sites-enabled
COPY script.sh .
RUN chmod +x script.sh
CMD ["./script.sh"]