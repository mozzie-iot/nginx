FROM ubuntu:22.04

RUN apt-get update -y 
RUN apt-get install nginx -y

RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/

COPY ./http.conf /etc/nginx/conf.d/http.conf

EXPOSE 80:80 
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]