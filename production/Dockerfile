FROM nginx:alpine

COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

COPY public/ /usr/share/nginx/html

EXPOSE 8123