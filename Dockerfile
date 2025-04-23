FROM nginx:alpine

# Agrega el modulo de seguridad para los links.
RUN apk add --no-cache nginx-mod-http-secure-link

# Borra la conf default
RUN rm -f /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf