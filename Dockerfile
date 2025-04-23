FROM nginx:1.27-alpine-slim

ARG ENVIRONMENT

# Borra la conf default
RUN rm -f /etc/nginx/conf.d/default.conf

COPY conf.d/${ENVIRONMENT}.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/nginx.conf