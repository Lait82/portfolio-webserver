FROM nginx:1.27-alpine-slim

# Borra la conf default
RUN rm -f /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf