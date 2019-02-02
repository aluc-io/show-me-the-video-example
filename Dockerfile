FROM nginx:1.15-alpine

RUN apk update && apk add curl
COPY download-static-resource.sh /root/
COPY mysite.template /etc/nginx/conf.d/mysite.template
COPY index.html /usr/share/nginx/html/index.html

RUN /root/download-static-resource.sh /usr/share/nginx/html

CMD ["/bin/sh", "-c", "envsubst < /etc/nginx/conf.d/mysite.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]


