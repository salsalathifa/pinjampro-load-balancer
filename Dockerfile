FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
CMD sed -i -e 's/listen 80;/listen '"$PORT"';/g' /etc/nginx/nginx.conf && nginx -g 'daemon off;'