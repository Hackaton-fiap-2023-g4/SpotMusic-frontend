FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
CMD rm -f /etc/nginx/conf.d/default.conf
#copy public/ /usr/share/nginx/html/
CMD rm -f /usr/share/nginx/html/index.html
COPY . /usr/share/nginx/html/
#CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf &&
CMD      nginx -g 'daemon off;'
