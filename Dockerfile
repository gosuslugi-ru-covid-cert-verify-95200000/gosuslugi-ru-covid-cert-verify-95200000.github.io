FROM nginx:alpine

ADD ./cert /usr/share/nginx/html/cert
ADD ./images /usr/share/nginx/html/images

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./default.conf /etc/nginx/conf.d/default.conf

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
