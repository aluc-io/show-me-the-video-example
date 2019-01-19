FROM nginx:1.15-alpine

RUN apk update && apk add curl
COPY download-static-resource.sh /root/
RUN /root/download-static-resource.sh /usr/share/nginx/html
