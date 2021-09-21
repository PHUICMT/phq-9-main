FROM jwilder/nginx-proxy:alpine

COPY ./internal_cert.crt /etc/nginx/server.crt
COPY ./internal_cert.key /etc/nginx/server.key