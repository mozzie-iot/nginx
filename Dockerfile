FROM nginx:alpine

RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/

COPY ./http.conf /etc/nginx/conf.d/http.conf

RUN mkdir /etc/nginx/stream_conf.d
COPY ./mqtt.conf /etc/nginx/stream_conf.d/mqtt.conf

EXPOSE 80:80 
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]