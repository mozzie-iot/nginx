FROM nginx:alpine
LABEL org.opencontainers.image.source https://github.com/huebot-iot/nginx

RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/

RUN rm /etc/nginx/conf.d/default.conf
COPY ./http.conf /etc/nginx/conf.d/http.conf

RUN mkdir /etc/nginx/stream_conf.d
COPY ./mqtt.conf /etc/nginx/stream_conf.d/mqtt.conf

EXPOSE 80:80 
EXPOSE 1883:1883
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]