# Enables websockets for NextJS fast refresh
FROM nginx:alpine

RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/

RUN rm /etc/nginx/conf.d/default.conf
COPY ./nextjs.http.conf /etc/nginx/conf.d/http.conf

RUN mkdir /etc/nginx/stream_conf.d
COPY ./mqtt.conf /etc/nginx/stream_conf.d/mqtt.conf

EXPOSE 80:80 
EXPOSE 1883:1883
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]